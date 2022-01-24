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
	struct counters *idq;
	struct counters *unhalt;
	struct counters *uopiss;
	struct counters *uopret;
	double un, id, res, con, uoi, uor;

	con = 4.0;
	unhalt = FUNC0(cpu, "CPU_CLK_UNHALTED.THREAD_P");
	idq = FUNC0(cpu, "IDQ.MS_UOPS");
	uopiss = FUNC0(cpu, "UOPS_ISSUED.ANY");
	uopret = FUNC0(cpu, "UOPS_RETIRED.RETIRE_SLOTS");
	if (pos != -1) {
		id = idq->vals[pos] * 1.0;
		un = unhalt->vals[pos] * 1.0;
		uoi = uopiss->vals[pos] * 1.0;
		uor = uopret->vals[pos] * 1.0;
	} else {
		id = idq->sum * 1.0;
		un = unhalt->sum * 1.0;
		uoi = uopiss->sum * 1.0;
		uor = uopret->sum * 1.0;
	}
	res = (uor/uoi) * (id/(un * con));
	ret = FUNC1("%1.3f", res);
	return(ret);
}