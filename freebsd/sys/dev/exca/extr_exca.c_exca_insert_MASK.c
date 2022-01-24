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
struct exca_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  pccarddev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void
FUNC3(struct exca_softc *exca)
{
	if (FUNC1(exca->pccarddev)) {
		if (FUNC0(exca->pccarddev) != 0)
			FUNC2(exca->dev,
			    "PC Card card activation failed\n");
	} else {
		FUNC2(exca->dev,
		    "PC Card inserted, but no pccard bus.\n");
	}
}