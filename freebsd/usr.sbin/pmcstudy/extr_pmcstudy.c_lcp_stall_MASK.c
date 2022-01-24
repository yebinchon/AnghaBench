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
         /* ILD_STALL.LCP/CPU_CLK_UNHALTED.THREAD_P IB */
	int ret;
	struct counters *ild;
	struct counters *unhalt;
	double un, d1, res;

	unhalt = FUNC0(cpu, "CPU_CLK_UNHALTED.THREAD_P");
	ild = FUNC0(cpu, "ILD_STALL.LCP");
	if (pos != -1) {
		d1 = ild->vals[pos] * 1.0;
		un = unhalt->vals[pos] * 1.0;
	} else {
		d1 = ild->sum * 1.0;
		un = unhalt->sum * 1.0;
	}
	res = d1/un;
	ret = FUNC1("%1.3f", res);
	return(ret);

}