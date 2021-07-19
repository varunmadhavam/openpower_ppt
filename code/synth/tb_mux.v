module tb;
     reg a,b,s;
     wire y;
     mux mux1(a,b,s,y);

     initial begin
        $dumpfile("mux.vcd");
	    $dumpvars(0,tb);
        a=0;
        b=0;
        s=0;
        #50;
        s=1;
        #50;
        s=0;
        $finish;
     end

     always #5 a=~a;
     always #25 b=~b;


endmodule