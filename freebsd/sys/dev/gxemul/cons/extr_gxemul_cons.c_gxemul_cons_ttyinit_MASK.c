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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tty*) ; 
 int /*<<< orphan*/  gxemul_cons_callout ; 
 int /*<<< orphan*/  gxemul_cons_polltime ; 
 int /*<<< orphan*/  gxemul_cons_timeout ; 
 int /*<<< orphan*/  gxemul_cons_ttydevsw ; 
 struct tty* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*,int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static void
FUNC5(void *unused)
{
	struct tty *tp;

	tp = FUNC2(&gxemul_cons_ttydevsw, NULL);
	FUNC3(tp, 0);
	FUNC4(tp, NULL, "%s", "ttyu0");
	FUNC0(&gxemul_cons_callout, 1);
	FUNC1(&gxemul_cons_callout, gxemul_cons_polltime,
	    gxemul_cons_timeout, tp);

}