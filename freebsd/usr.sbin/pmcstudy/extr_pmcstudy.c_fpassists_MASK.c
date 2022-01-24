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
	/* 16  - FP_ASSIST.ANY/INST_RETIRED.ANY_P */
	int ret;	
	struct counters *fp;
	struct counters *inst;
	double un, fpd, res;

	inst = FUNC0(cpu, "INST_RETIRED.ANY_P");
	fp = FUNC0(cpu, "FP_ASSIST.ANY");
	if (pos != -1) {
		fpd = fp->vals[pos] * 1.0;
		un = inst->vals[pos] * 1.0;
	} else {
		fpd = fp->sum * 1.0;
		un = inst->sum * 1.0;
	}
	res = fpd/un;
	ret = FUNC1("%1.3f", res);
	return(ret);
}