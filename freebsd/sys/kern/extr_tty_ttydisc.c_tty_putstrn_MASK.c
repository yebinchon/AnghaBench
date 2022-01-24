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
struct tty {int /*<<< orphan*/  t_inq; int /*<<< orphan*/  t_column; int /*<<< orphan*/  t_writepos; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ FUNC0 (struct tty*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,char const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct tty *tp, const char *p, size_t n)
{
	size_t i;

	FUNC1(tp, MA_OWNED);

	if (FUNC0(tp))
		return (-1);

	for (i = 0; i < n; i++)
		FUNC3(tp, p[i], 0);

	tp->t_writepos = tp->t_column;
	FUNC4(&tp->t_inq);

	FUNC2(tp);
	return (0);
}