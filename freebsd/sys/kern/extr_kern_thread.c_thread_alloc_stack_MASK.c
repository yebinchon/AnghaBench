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
 int /*<<< orphan*/  FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int) ; 

int
FUNC3(struct thread *td, int pages)
{

	FUNC0(td->td_kstack == 0,
	    ("thread_alloc_stack called on a thread with kstack"));
	if (!FUNC2(td, pages))
		return (0);
	FUNC1(td);
	return (1);
}