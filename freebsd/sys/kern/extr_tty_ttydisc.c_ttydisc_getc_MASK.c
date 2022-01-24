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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  getc_capture ; 
 int /*<<< orphan*/  getc_inject ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tty_nout ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,void*,size_t) ; 
 size_t FUNC4 (struct tty*,void*,size_t) ; 
 scalar_t__ FUNC5 (struct tty*,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,void*,size_t) ; 

size_t
FUNC7(struct tty *tp, void *buf, size_t len)
{

	FUNC1(tp, MA_OWNED);

	if (tp->t_flags & TF_STOPPED)
		return (0);

	if (FUNC5(tp, getc_inject))
		return FUNC4(tp, buf, len);

	len = FUNC6(&tp->t_outq, buf, len);

	if (FUNC5(tp, getc_capture))
		FUNC3(tp, buf, len);

	FUNC2(tp);
	FUNC0(&tty_nout, len);

	return (len);
}