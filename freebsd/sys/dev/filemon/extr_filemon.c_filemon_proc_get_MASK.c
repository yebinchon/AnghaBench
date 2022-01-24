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
struct proc {int /*<<< orphan*/ * p_filemon; } ;
struct filemon {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 struct filemon* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct filemon *
FUNC4(struct proc *p)
{
	struct filemon *filemon;

	if (p->p_filemon == NULL)
		return (NULL);
	FUNC0(p);
	filemon = FUNC2(p->p_filemon);
	FUNC1(p);

	if (filemon == NULL)
		return (NULL);
	/*
	 * The p->p_filemon may have changed by now.  That case is handled
	 * by the exit and fork hooks and filemon_attach_proc specially.
	 */
	FUNC3(&filemon->lock);
	return (filemon);
}