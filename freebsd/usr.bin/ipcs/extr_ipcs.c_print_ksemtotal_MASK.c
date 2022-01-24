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
struct seminfo {int semmni; int semmns; int semmnu; int semmsl; int semopm; int semume; int semusz; int semvmx; int semaem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1(struct seminfo local_seminfo)
{

	FUNC0("seminfo:\n");
	FUNC0("\tsemmni: %12d\t(# of semaphore identifiers)\n",
	    local_seminfo.semmni);
	FUNC0("\tsemmns: %12d\t(# of semaphores in system)\n",
	    local_seminfo.semmns);
	FUNC0("\tsemmnu: %12d\t(# of undo structures in system)\n",
	    local_seminfo.semmnu);
	FUNC0("\tsemmsl: %12d\t(max # of semaphores per id)\n",
	    local_seminfo.semmsl);
	FUNC0("\tsemopm: %12d\t(max # of operations per semop call)\n",
	    local_seminfo.semopm);
	FUNC0("\tsemume: %12d\t(max # of undo entries per process)\n",
	    local_seminfo.semume);
	FUNC0("\tsemusz: %12d\t(size in bytes of undo structure)\n",
	    local_seminfo.semusz);
	FUNC0("\tsemvmx: %12d\t(semaphore maximum value)\n",
	    local_seminfo.semvmx);
	FUNC0("\tsemaem: %12d\t(adjust on exit max value)\n\n",
	    local_seminfo.semaem);
}