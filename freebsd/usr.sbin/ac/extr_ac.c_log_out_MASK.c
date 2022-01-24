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
struct utmpx_entry {int /*<<< orphan*/  user; int /*<<< orphan*/  time; int /*<<< orphan*/  id; } ;
struct utmpx {scalar_t__ ut_type; int /*<<< orphan*/  ut_tv; int /*<<< orphan*/  ut_id; } ;
struct timeval {int dummy; } ;

/* Variables and functions */
 scalar_t__ BOOT_TIME ; 
 int /*<<< orphan*/  CurUtmpx ; 
 scalar_t__ DEAD_PROCESS ; 
 scalar_t__ SHUTDOWN_TIME ; 
 struct utmpx_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 struct utmpx_entry* FUNC1 (struct utmpx_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct utmpx_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct utmpx_entry*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct timeval) ; 

__attribute__((used)) static void
FUNC8(const struct utmpx *up)
{
	struct utmpx_entry *lp, *lp2, *tlp;
	struct timeval secs;

	for (lp = FUNC0(&CurUtmpx), lp2 = NULL; lp != NULL;)
		if (up->ut_type == BOOT_TIME || up->ut_type == SHUTDOWN_TIME ||
		    (up->ut_type == DEAD_PROCESS &&
		    FUNC5(lp->id, up->ut_id, sizeof(up->ut_id)) == 0)) {
			FUNC6(&up->ut_tv, &lp->time, &secs);
			FUNC7(lp->user, secs);
			/*
			 * now lose it
			 */
			tlp = lp;
			lp = FUNC1(lp, next);
			if (lp2 == NULL)
				FUNC3(&CurUtmpx, next);
			else
				FUNC2(lp2, next);
			FUNC4(tlp);
		} else {
			lp2 = lp;
			lp = FUNC1(lp, next);
		}
}