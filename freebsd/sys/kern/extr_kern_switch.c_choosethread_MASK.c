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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct thread* FUNC2 (struct thread*) ; 
 int /*<<< orphan*/ * panicstr ; 
 struct thread* FUNC3 () ; 

struct thread *
FUNC4(void)
{
	struct thread *td;

	td = FUNC3();

	if (FUNC1(panicstr != NULL))
		return (FUNC2(td));

	FUNC0(td);
	return (td);
}