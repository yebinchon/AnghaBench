#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int ECCEN ; 
 double EPSILONg ; 
 double Nzero ; 
 int PI ; 
 double Pzero ; 
 double RHOg ; 
 int /*<<< orphan*/  FUNC0 (double*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 double lzero ; 
 double FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static double
FUNC4(double days)
{
	double N, Msol, Ec, LambdaSol, l, Mm, Ev, Ac, A3, Mmprime;
	double A4, lprime, V, ldprime, D, Nm;

	N = 360 * days / 365.2422;				/* sec 42 #3 */
	FUNC0(&N);
	Msol = N + EPSILONg - RHOg;				/* sec 42 #4 */
	FUNC0(&Msol);
	Ec = 360 / PI * ECCEN * FUNC3(FUNC2(Msol));		/* sec 42 #5 */
	LambdaSol = N + Ec + EPSILONg;				/* sec 42 #6 */
	FUNC0(&LambdaSol);
	l = 13.1763966 * days + lzero;				/* sec 61 #4 */
	FUNC0(&l);
	Mm = l - (0.1114041 * days) - Pzero;			/* sec 61 #5 */
	FUNC0(&Mm);
	Nm = Nzero - (0.0529539 * days);			/* sec 61 #6 */
	FUNC0(&Nm);
	Ev = 1.2739 * FUNC3(FUNC2(2*(l - LambdaSol) - Mm));	/* sec 61 #7 */
	Ac = 0.1858 * FUNC3(FUNC2(Msol));				/* sec 61 #8 */
	A3 = 0.37 * FUNC3(FUNC2(Msol));
	Mmprime = Mm + Ev - Ac - A3;				/* sec 61 #9 */
	Ec = 6.2886 * FUNC3(FUNC2(Mmprime));			/* sec 61 #10 */
	A4 = 0.214 * FUNC3(FUNC2(2 * Mmprime));			/* sec 61 #11 */
	lprime = l + Ev + Ec - Ac + A4;				/* sec 61 #12 */
	V = 0.6583 * FUNC3(FUNC2(2 * (lprime - LambdaSol)));	/* sec 61 #13 */
	ldprime = lprime + V;					/* sec 61 #14 */
	D = ldprime - LambdaSol;				/* sec 63 #2 */
	return(50 * (1 - FUNC1(FUNC2(D))));			/* sec 63 #3 */
}