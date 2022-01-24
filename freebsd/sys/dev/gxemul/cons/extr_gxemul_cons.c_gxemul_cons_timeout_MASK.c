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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct tty*) ; 
 int /*<<< orphan*/  gxemul_cons_alt_break_state ; 
 int /*<<< orphan*/  gxemul_cons_callout ; 
 int /*<<< orphan*/  gxemul_cons_polltime ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tty*) ; 

__attribute__((used)) static void
FUNC10(void *v)
{
	struct tty *tp;
	int c;

	tp = v;
	FUNC6(tp);
	FUNC0();
	while (FUNC4()) {
		c = FUNC3();
		FUNC1();
#ifdef KDB
		kdb_alt_break(c, &gxemul_cons_alt_break_state);
#endif
		FUNC8(tp, c, 0);
		FUNC0();
	}
	FUNC1();
	FUNC9(tp);
	FUNC7(tp);
	FUNC2(&gxemul_cons_callout, gxemul_cons_polltime,
	    gxemul_cons_timeout, tp);
}