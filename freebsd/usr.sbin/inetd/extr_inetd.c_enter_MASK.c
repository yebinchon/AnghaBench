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
struct servtab {int se_fd; struct servtab* se_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIGBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct servtab* servtab ; 
 long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct servtab *
FUNC5(struct servtab *cp)
{
	struct servtab *sep;
	long omask;

	sep = (struct servtab *)FUNC1(sizeof (*sep));
	if (sep == (struct servtab *)0) {
		FUNC4(LOG_ERR, "malloc: %m");
		FUNC0(EX_OSERR);
	}
	*sep = *cp;
	sep->se_fd = -1;
	omask = FUNC2(SIGBLOCK);
	sep->se_next = servtab;
	servtab = sep;
	FUNC3(omask);
	return (sep);
}