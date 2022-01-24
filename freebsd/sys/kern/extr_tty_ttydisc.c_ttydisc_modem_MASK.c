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
struct tty {int /*<<< orphan*/  t_flags; int /*<<< orphan*/  t_dcdwait; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  TF_ZOMBIE ; 
 int /*<<< orphan*/  c ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct tty *tp, int open)
{

	FUNC3(tp, MA_OWNED);

	if (open)
		FUNC1(&tp->t_dcdwait);

	/*
	 * Ignore modem status lines when CLOCAL is turned on, but don't
	 * enter the zombie state when the TTY isn't opened, because
	 * that would cause the TTY to be in zombie state after being
	 * opened.
	 */
	if (!FUNC4(tp) || FUNC0(c, CLOCAL))
		return;

	if (open == 0) {
		/*
		 * Lost carrier.
		 */
		tp->t_flags |= TF_ZOMBIE;

		FUNC5(tp, SIGHUP);
		FUNC2(tp, FREAD|FWRITE);
	} else {
		/*
		 * Carrier is back again.
		 */

		/* XXX: what should we do here? */
	}
}