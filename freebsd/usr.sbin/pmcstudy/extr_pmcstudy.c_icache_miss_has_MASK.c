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
	/* (36 * ICACHE.MISSES) / CPU_CLK_UNHALTED.THREAD_P */

	int ret;
	struct counters *icache;
	struct counters *unhalt;
	double un, con, ic, res;

	unhalt = FUNC0(cpu, "CPU_CLK_UNHALTED.THREAD_P");
	icache = FUNC0(cpu, "ICACHE.MISSES");
	con = 36.0;
	if (pos != -1) {
		ic = icache->vals[pos] * 1.0;
		un = unhalt->vals[pos] * 1.0;
	} else {
		ic = icache->sum * 1.0;
		un = unhalt->sum * 1.0;
	}
	res = (con * ic)/un;
	ret = FUNC1("%1.3f", res);
	return(ret);

}