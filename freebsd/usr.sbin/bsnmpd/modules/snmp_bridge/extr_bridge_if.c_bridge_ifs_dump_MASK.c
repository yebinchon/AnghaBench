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
struct bridge_if {int /*<<< orphan*/  sysindex; int /*<<< orphan*/  bif_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct bridge_if*) ; 
 struct bridge_if* FUNC1 () ; 
 struct bridge_if* FUNC2 (struct bridge_if*) ; 
 int /*<<< orphan*/  FUNC3 (struct bridge_if*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(void)
{
	struct bridge_if *bif;

	for (bif = FUNC1(); bif != NULL;
		bif = FUNC2(bif)) {
		FUNC4(LOG_ERR, "Bridge %s, index - %d", bif->bif_name,
		    bif->sysindex);
		FUNC3(bif);
		FUNC0(bif);
	}
}