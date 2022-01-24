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
struct tty {int /*<<< orphan*/  t_inq; int /*<<< orphan*/  t_outq; int /*<<< orphan*/  t_flags; } ;

/* Variables and functions */
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  TF_HIWAT_OUT ; 
 int /*<<< orphan*/  TIOCPKT_FLUSHREAD ; 
 int /*<<< orphan*/  TIOCPKT_FLUSHWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct tty*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(struct tty *tp, int flags)
{

	if (flags & FWRITE) {
		tp->t_flags &= ~TF_HIWAT_OUT;
		FUNC7(&tp->t_outq);
		FUNC2(tp, FWRITE);
		if (!FUNC0(tp)) {
			FUNC4(tp);
			FUNC5(tp, TIOCPKT_FLUSHWRITE);
		}
	}
	if (flags & FREAD) {
		FUNC1(tp);
		FUNC6(&tp->t_inq);
		FUNC2(tp, FREAD);
		if (!FUNC0(tp)) {
			FUNC3(tp);
			FUNC5(tp, TIOCPKT_FLUSHREAD);
		}
	}
}