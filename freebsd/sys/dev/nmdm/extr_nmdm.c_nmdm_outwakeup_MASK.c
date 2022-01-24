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
struct tty {int dummy; } ;
struct nmdmpart {int /*<<< orphan*/  np_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi ; 
 struct nmdmpart* FUNC1 (struct tty*) ; 

__attribute__((used)) static void
FUNC2(struct tty *tp)
{
	struct nmdmpart *np = FUNC1(tp);

	/* We can transmit again, so wake up our side. */
	FUNC0(taskqueue_swi, &np->np_task);
}