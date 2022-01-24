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
struct nmdmpart {struct tty* np_tty; struct nmdmpart* np_other; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty*) ; 
 scalar_t__ FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 struct nmdmpart* FUNC3 (struct tty*) ; 

__attribute__((used)) static void
FUNC4(struct tty *tp)
{
	struct nmdmpart *np;
	struct nmdmpart *onp;
	struct tty *otp;

	np = FUNC3(tp);
	onp = np->np_other;
	otp = onp->np_tty;

	/* If second part is opened, do not destroy ourselves. */
	if (FUNC1(otp))
		return;

	/* Shut down self. */
	FUNC2(tp);

	/* Shut down second part. */
	FUNC0(tp);
	onp = np->np_other;
	if (onp == NULL)
		return;
	otp = onp->np_tty;
	FUNC2(otp);
	FUNC0(tp);
}