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
struct bridge_if {int /*<<< orphan*/  bif_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 struct bridge_if* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct bridge_if *bif;

	if ((bif = FUNC0()) == NULL)
		FUNC3(LOG_ERR, "Dump: no default bridge interface");
	else
		FUNC3(LOG_ERR, "Dump: default bridge interface %s",
		     bif->bif_name);

	FUNC1();
	FUNC2();
}