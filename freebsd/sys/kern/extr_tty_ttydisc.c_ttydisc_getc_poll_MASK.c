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
struct tty {int t_flags; int /*<<< orphan*/  t_outq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int TF_STOPPED ; 
 int /*<<< orphan*/  getc_poll ; 
 int /*<<< orphan*/  FUNC0 (struct tty*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct tty*) ; 
 scalar_t__ FUNC2 (struct tty*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 

size_t
FUNC4(struct tty *tp)
{

	FUNC0(tp, MA_OWNED);

	if (tp->t_flags & TF_STOPPED)
		return (0);

	if (FUNC2(tp, getc_poll))
		return FUNC1(tp);

	return FUNC3(&tp->t_outq);
}