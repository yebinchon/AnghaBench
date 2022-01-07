
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ECCEN ;
 double EPSILONg ;
 double Nzero ;
 int PI ;
 double Pzero ;
 double RHOg ;
 int adj360 (double*) ;
 int cos (int ) ;
 int dtor (double) ;
 double lzero ;
 double sin (int ) ;

__attribute__((used)) static double
potm(double onday)
{
 double N, Msol, Ec, LambdaSol, l, Mm, Ev, Ac, A3, Mmprime;
 double A4, lprime, V, ldprime, D, Nm;

 N = 360 * onday / 365.2422;
 adj360(&N);
 Msol = N + EPSILONg - RHOg;
 adj360(&Msol);
 Ec = 360 / PI * ECCEN * sin(dtor(Msol));
 LambdaSol = N + Ec + EPSILONg;
 adj360(&LambdaSol);
 l = 13.1763966 * onday + lzero;
 adj360(&l);
 Mm = l - (0.1114041 * onday) - Pzero;
 adj360(&Mm);
 Nm = Nzero - (0.0529539 * onday);
 adj360(&Nm);
 Ev = 1.2739 * sin(dtor(2*(l - LambdaSol) - Mm));
 Ac = 0.1858 * sin(dtor(Msol));
 A3 = 0.37 * sin(dtor(Msol));
 Mmprime = Mm + Ev - Ac - A3;
 Ec = 6.2886 * sin(dtor(Mmprime));
 A4 = 0.214 * sin(dtor(2 * Mmprime));
 lprime = l + Ev + Ec - Ac + A4;
 V = 0.6583 * sin(dtor(2 * (lprime - LambdaSol)));
 ldprime = lprime + V;
 D = ldprime - LambdaSol;
 return(50 * (1 - cos(dtor(D))));
}
