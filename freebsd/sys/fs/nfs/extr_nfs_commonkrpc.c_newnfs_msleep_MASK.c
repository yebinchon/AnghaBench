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
struct mtx {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int PCATCH ; 
 struct thread* curthread ; 
 int FUNC0 (void*,struct mtx*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ *) ; 

int
FUNC3(struct thread *td, void *ident, struct mtx *mtx, int priority, char *wmesg, int timo)
{
	sigset_t oldset;
	int error;

	if ((priority & PCATCH) == 0)
		return FUNC0(ident, mtx, priority, wmesg, timo);
	if (td == NULL)
		td = curthread; /* XXX */
	FUNC2(td, &oldset);
	error = FUNC0(ident, mtx, priority, wmesg, timo);
	FUNC1(td, &oldset);
	return (error);
}