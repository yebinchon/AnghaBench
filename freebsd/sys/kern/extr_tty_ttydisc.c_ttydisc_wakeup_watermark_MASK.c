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
struct tty {int t_flags; size_t t_outlow; int /*<<< orphan*/  t_outq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FWRITE ; 
 int TF_HIWAT_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct tty*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct tty *tp)
{
	size_t c;

	c = FUNC1(&tp->t_outq);
	if (tp->t_flags & TF_HIWAT_OUT) {
		/* Only allow us to run when we're below the watermark. */
		if (c < tp->t_outlow)
			return;

		/* Reset the watermark. */
		tp->t_flags &= ~TF_HIWAT_OUT;
	} else {
		/* Only run when we have data at all. */
		if (c == 0)
			return;
	}
	FUNC0(tp, FWRITE);
}