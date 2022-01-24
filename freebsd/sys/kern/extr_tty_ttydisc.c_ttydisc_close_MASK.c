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
struct tty {int t_flags; } ;

/* Variables and functions */
 int FREAD ; 
 int FWRITE ; 
 int TF_HIWAT ; 
 int TF_STOPPED ; 
 int TF_ZOMBIE ; 
 int /*<<< orphan*/  close ; 
 int /*<<< orphan*/  FUNC0 (struct tty*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 scalar_t__ FUNC2 (struct tty*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct tty *tp)
{

	/* Clean up our flags when leaving the discipline. */
	tp->t_flags &= ~(TF_STOPPED|TF_HIWAT|TF_ZOMBIE);

	/*
	 * POSIX states that we must drain output and flush input on
	 * last close.  Draining has already been done if possible.
	 */
	FUNC0(tp, FREAD | FWRITE);

	if (FUNC2(tp, close))
		FUNC1(tp);
}