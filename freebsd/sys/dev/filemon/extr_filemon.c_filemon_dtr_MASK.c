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
struct filemon {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct filemon*) ; 
 int /*<<< orphan*/  FUNC1 (struct filemon*) ; 
 int /*<<< orphan*/  FUNC2 (struct filemon*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *data)
{
	struct filemon *filemon = data;

	if (filemon == NULL)
		return;

	FUNC3(&filemon->lock);
	/*
	 * Detach the filemon.  It cannot be inherited after this.
	 */
	FUNC2(filemon);
	FUNC0(filemon);
	FUNC1(filemon);
}