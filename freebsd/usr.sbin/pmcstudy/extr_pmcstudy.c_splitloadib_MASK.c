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
	int ret;
	struct counters *mem;
	struct counters *l1d, *ldblock;
	struct counters *unhalt;
	double un, memd, res, l1, ldb;
        /*  
	 * ((L1D_PEND_MISS.PENDING / MEM_LOAD_UOPS_RETIRED.L1_MISS) * LD_BLOCKS.NO_SR) / CPU_CLK_UNHALTED.THREAD_P
	 * "pmcstat -s CPU_CLK_UNHALTED.THREAD_P -s L1D_PEND_MISS.PENDING -s MEM_LOAD_UOPS_RETIRED.L1_MISS -s LD_BLOCKS.NO_SR -w 1",
	 */

	unhalt = FUNC0(cpu, "CPU_CLK_UNHALTED.THREAD_P");
	mem = FUNC0(cpu, "MEM_LOAD_UOPS_RETIRED.L1_MISS");
	l1d = FUNC0(cpu, "L1D_PEND_MISS.PENDING");
	ldblock = FUNC0(cpu, "LD_BLOCKS.NO_SR");
	if (pos != -1) {
		memd = mem->vals[pos] * 1.0;
		l1 = l1d->vals[pos] * 1.0;
		ldb = ldblock->vals[pos] * 1.0;
		un = unhalt->vals[pos] * 1.0;
	} else {
		memd = mem->sum * 1.0;
		l1 = l1d->sum * 1.0;
		ldb = ldblock->sum * 1.0;
		un = unhalt->sum * 1.0;
	}
	res = ((l1 / memd) * ldb)/un;
	ret = FUNC1("%1.3f", res);
	return(ret);
}