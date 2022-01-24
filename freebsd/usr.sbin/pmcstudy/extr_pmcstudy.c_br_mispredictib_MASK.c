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
	struct counters *brctr;
	struct counters *unhalt;
	struct counters *clear, *clear2, *clear3;
	struct counters *uops;
	struct counters *recv;	
	struct counters *iss;
/*	  "pmcstat -s CPU_CLK_UNHALTED.THREAD_P -s BR_MISP_RETIRED.ALL_BRANCHES -s MACHINE_CLEARS.MEMORY_ORDERING -s MACHINE_CLEARS.SMC -s MACHINE_CLEARS.MASKMOV -s UOPS_ISSUED.ANY -s UOPS_RETIRED.RETIRE_SLOTS -s INT_MISC.RECOVERY_CYCLES -w 1",*/
	int ret;
        /*  
	 * (BR_MISP_RETIRED.ALL_BRANCHES / 
	 *         (BR_MISP_RETIRED.ALL_BRANCHES +
	 *          MACHINE_CLEAR.COUNT) * 
	 *	   ((UOPS_ISSUED.ANY - UOPS_RETIRED.RETIRE_SLOTS + 4 * INT_MISC.RECOVERY_CYCLES) / (4 * CPU_CLK_UNHALTED.THREAD)))
	 *
	 */
	double br, cl, cl2, cl3, uo, re, un, con, res, is;
	con = 4.0;
	
	unhalt = FUNC0(cpu, "CPU_CLK_UNHALTED.THREAD_P");
        brctr = FUNC0(cpu, "BR_MISP_RETIRED.ALL_BRANCHES");
	clear = FUNC0(cpu, "MACHINE_CLEARS.MEMORY_ORDERING");
	clear2 = FUNC0(cpu, "MACHINE_CLEARS.SMC");
	clear3 = FUNC0(cpu, "MACHINE_CLEARS.MASKMOV");
	uops = FUNC0(cpu, "UOPS_RETIRED.RETIRE_SLOTS");
	iss = FUNC0(cpu, "UOPS_ISSUED.ANY");
	recv = FUNC0(cpu, "INT_MISC.RECOVERY_CYCLES");
	if (pos != -1) {
		br = brctr->vals[pos] * 1.0;
		cl = clear->vals[pos] * 1.0;
		cl2 = clear2->vals[pos] * 1.0;
		cl3 = clear3->vals[pos] * 1.0;
		uo = uops->vals[pos] * 1.0;
		re = recv->vals[pos] * 1.0;
		is = iss->vals[pos] * 1.0;
		un = unhalt->vals[pos] * 1.0;
	} else {
		br = brctr->sum * 1.0;
		cl = clear->sum * 1.0;
		cl2 = clear2->sum * 1.0;
		cl3 = clear3->sum * 1.0;
		uo = uops->sum * 1.0;
		re = recv->sum * 1.0;
		is = iss->sum * 1.0;
		un = unhalt->sum * 1.0;
	}
	res = (br/(br + cl + cl2 + cl3) * ((is - uo + con * re) / (con * un)));
 	ret = FUNC1("%1.3f", res);
	return(ret);
}