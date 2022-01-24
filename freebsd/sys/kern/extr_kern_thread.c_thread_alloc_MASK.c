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
struct thread {scalar_t__ td_kstack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  thread_zone ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,int) ; 

struct thread *
FUNC6(int pages)
{
	struct thread *td;

	FUNC2(); /* check if any zombies to get */

	td = (struct thread *)FUNC3(thread_zone, M_WAITOK);
	FUNC0(td->td_kstack == 0, ("thread_alloc got thread with kstack"));
	if (!FUNC5(td, pages)) {
		FUNC4(thread_zone, td);
		return (NULL);
	}
	FUNC1(td);
	return (td);
}