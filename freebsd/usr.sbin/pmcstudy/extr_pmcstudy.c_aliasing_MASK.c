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
	/* 15  - (LD_BLOCKS_PARTIAL.ADDRESS_ALIAS * 5) / CPU_CLK_UNHALTED.THREAD_P (thresh > .1) */
	int ret;	
	struct counters *ld;
	struct counters *unhalt;
	double un, lds, con, res;

	con = 5.0;
	unhalt = FUNC0(cpu, "CPU_CLK_UNHALTED.THREAD_P");
	ld = FUNC0(cpu, "LD_BLOCKS_PARTIAL.ADDRESS_ALIAS");
	if (pos != -1) {
		lds = ld->vals[pos] * 1.0;
		un = unhalt->vals[pos] * 1.0;
	} else {
		lds = ld->sum * 1.0;
		un = unhalt->sum * 1.0;
	}
	res = (lds * con)/un;
	ret = FUNC1("%1.3f", res);
	return(ret);
}