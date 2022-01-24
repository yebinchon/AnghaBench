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
struct bridge_if {int dummy; } ;

/* Variables and functions */
 struct bridge_if* FUNC0 () ; 
 int /*<<< orphan*/  bridge_list_age ; 
 struct bridge_if* FUNC1 (struct bridge_if*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct bridge_if*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(void)
{
	struct bridge_if *bif, *t_bif;

	for (bif = FUNC0(); bif != NULL; bif = t_bif) {
		t_bif = FUNC1(bif);
		FUNC3(bif);
	}

	FUNC2();
	bridge_list_age = FUNC4(NULL);
}