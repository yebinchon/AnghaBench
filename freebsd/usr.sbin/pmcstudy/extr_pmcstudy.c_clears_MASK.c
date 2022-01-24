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
struct counters {double* vals; double sum; } ;

/* Variables and functions */
 struct counters* FUNC0 (struct counters*,char*) ; 
 int FUNC1 (char*,double) ; 

__attribute__((used)) static int
FUNC2(struct counters *cpu, int pos)
{
	/* 13  - ((MACHINE_CLEARS.MEMORY_ORDERING + MACHINE_CLEARS.SMC + MACHINE_CLEARS.MASKMOV ) * 100 )  
	 *         / CPU_CLK_UNHALTED.THREAD_P (thresh  >= .02)*/
	
	int ret;
	struct counters *clr1, *clr2, *clr3;
	struct counters *unhalt;
	double con, un, cl1, cl2, cl3, res;

	con = 100.0;
	unhalt = FUNC0(cpu, "CPU_CLK_UNHALTED.THREAD_P");
	clr1 = FUNC0(cpu, "MACHINE_CLEARS.MEMORY_ORDERING");
	clr2 = FUNC0(cpu, "MACHINE_CLEARS.SMC");
	clr3 = FUNC0(cpu, "MACHINE_CLEARS.MASKMOV");
	
	if (pos != -1) {
		cl1 = clr1->vals[pos] * 1.0;
		cl2 = clr2->vals[pos] * 1.0;
		cl3 = clr3->vals[pos] * 1.0;
		un = unhalt->vals[pos] * 1.0;
	} else {
		cl1 = clr1->sum * 1.0;
		cl2 = clr2->sum * 1.0;
		cl3 = clr3->sum * 1.0;
		un = unhalt->sum * 1.0;
	}
	res = ((cl1 + cl2 + cl3) * con)/un;
	ret = FUNC1("%1.3f", res);
	return(ret);
}