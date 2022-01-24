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
struct tty {int /*<<< orphan*/  t_inq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALTWERASE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  l ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int*) ; 

__attribute__((used)) static void
FUNC5(struct tty *tp)
{
	char c;
	int quote, alnum;

	/* Strip whitespace first. */
	for (;;) {
		if (FUNC4(&tp->t_inq, &c, &quote) != 0)
			return;
		if (!FUNC2(c))
			break;
		FUNC3(tp);
	}

	/*
	 * Record whether the last character from the previous iteration
	 * was alphanumeric or not. We need this to implement ALTWERASE.
	 */
	alnum = FUNC1(c);
	for (;;) {
		FUNC3(tp);

		if (FUNC4(&tp->t_inq, &c, &quote) != 0)
			return;
		if (FUNC2(c))
			return;
		if (FUNC0(l, ALTWERASE) && FUNC1(c) != alnum)
			return;
	}
}