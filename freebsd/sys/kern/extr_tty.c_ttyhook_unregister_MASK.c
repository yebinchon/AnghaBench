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
struct tty {int t_flags; int /*<<< orphan*/ * t_hook; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TF_HOOK ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 

void
FUNC4(struct tty *tp)
{

	FUNC1(tp, MA_OWNED);
	FUNC0(tp->t_flags & TF_HOOK);

	/* Disconnect the hook. */
	tp->t_flags &= ~TF_HOOK;
	tp->t_hook = NULL;

	/* Maybe we need to leave bypass mode. */
	FUNC3(tp);

	/* Maybe deallocate the TTY as well. */
	FUNC2(tp);
}