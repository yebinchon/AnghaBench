#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kinfo_proc {scalar_t__ ki_jid; int ki_pid; } ;
struct TYPE_2__ {int tv_sec; } ;
struct cfjail {scalar_t__ jid; scalar_t__ nprocs; TYPE_1__ timeout; int /*<<< orphan*/ * intparams; } ;
typedef  int /*<<< orphan*/  kvm_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int DEFAULT_STOP_TIMEOUT ; 
 size_t IP_STOP_TIMEOUT ; 
 int /*<<< orphan*/  KERN_PROC_PROC ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (struct cfjail*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfjail*,char*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct kinfo_proc* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int
FUNC8(struct cfjail *j)
{
	struct kinfo_proc *ki;
	int i, noted, pcnt, timeout;

	static kvm_t *kd;

	if (!FUNC2(j->intparams[IP_STOP_TIMEOUT], &timeout))
		timeout = DEFAULT_STOP_TIMEOUT;
	else if (timeout == 0)
		return 0;

	if (kd == NULL) {
		kd = FUNC6(NULL, NULL, NULL, O_RDONLY, NULL);
		if (kd == NULL)
			return 0;
	}

	ki = FUNC5(kd, KERN_PROC_PROC, 0, &pcnt);
	if (ki == NULL)
		return 0;
	noted = 0;
	for (i = 0; i < pcnt; i++)
		if (ki[i].ki_jid == j->jid &&
		    FUNC4(ki[i].ki_pid, SIGTERM) == 0) {
			(void)FUNC0(j, ki[i].ki_pid);
			if (verbose > 0) {
				if (!noted) {
					noted = 1;
					FUNC3(j, "sent SIGTERM to:");
				}
				FUNC7(" %d", ki[i].ki_pid);
			}
		}
	if (noted)
		FUNC7("\n");
	if (j->nprocs > 0) {
		FUNC1(CLOCK_REALTIME, &j->timeout);
		j->timeout.tv_sec += timeout;
		return 1;
	}
	return 0;
}