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
struct tty {int t_flags; int /*<<< orphan*/  t_inq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TF_BYPASS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  rint_bypass ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tty_nin ; 
 scalar_t__ FUNC4 (struct tty*,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (struct tty*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (int /*<<< orphan*/ *,void const*,size_t,int /*<<< orphan*/ ) ; 

size_t
FUNC8(struct tty *tp, const void *buf, size_t len)
{
	size_t ret;

	FUNC3(tp, MA_OWNED);

	FUNC0(tp->t_flags & TF_BYPASS);

	FUNC1(&tty_nin, len);

	if (FUNC4(tp, rint_bypass))
		return FUNC5(tp, buf, len);

	ret = FUNC7(&tp->t_inq, buf, len, 0);
	FUNC6(&tp->t_inq);
	if (ret < len)
		FUNC2(tp);

	return (ret);
}