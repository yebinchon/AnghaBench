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
struct thread {int dummy; } ;
struct msgring_thread {struct thread* thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRI_ITHD ; 
 int /*<<< orphan*/  RFSTOPPED ; 
 int /*<<< orphan*/  SRQ_INTR ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,struct thread**,int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  msgring_proc ; 
 int /*<<< orphan*/  msgring_process ; 
 struct msgring_thread* msgring_threads ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 

__attribute__((used)) static void
FUNC6(int hwtid)
{
	struct msgring_thread *mthd;
	struct thread *td;
	int	error;

	mthd = &msgring_threads[hwtid];
	error = FUNC0(msgring_process, (void *)(uintptr_t)hwtid,
	    &msgring_proc, &td, RFSTOPPED, 2, "msgrngproc",
	    "msgthr%d", hwtid);
	if (error)
		FUNC1("kproc_kthread_add() failed with %d", error);
	mthd->thread = td;

	FUNC4(td);
	FUNC3(td, PRI_ITHD);
	FUNC2(td, SRQ_INTR);
	FUNC5(td);
}