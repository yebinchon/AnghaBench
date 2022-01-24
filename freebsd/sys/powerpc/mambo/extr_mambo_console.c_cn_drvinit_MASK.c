#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ cn_pri; char* cn_name; } ;

/* Variables and functions */
 scalar_t__ CN_DEAD ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mambo_callout ; 
 TYPE_1__ mambo_consdev ; 
 int /*<<< orphan*/  mambo_timeout ; 
 int /*<<< orphan*/  mambo_ttydevsw ; 
 int polltime ; 
 int /*<<< orphan*/  tp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static void
FUNC6(void *unused)
{

	if (mambo_consdev.cn_pri != CN_DEAD &&
	    mambo_consdev.cn_name[0] != '\0') {
		if (FUNC0("/mambo") == -1)
			return;

		tp = FUNC3(&mambo_ttydevsw, NULL);
		FUNC4(tp, 0);
		FUNC5(tp, NULL, "%s", "mambocons");

		polltime = 1;

		FUNC1(&mambo_callout, 1);
		FUNC2(&mambo_callout, polltime, mambo_timeout, NULL);
	}
}