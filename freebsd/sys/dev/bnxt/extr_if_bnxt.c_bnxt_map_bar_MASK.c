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
typedef  int /*<<< orphan*/  uint32_t ;
struct bnxt_softc {int /*<<< orphan*/  dev; } ;
struct bnxt_bar_info {int /*<<< orphan*/ * res; int /*<<< orphan*/  size; int /*<<< orphan*/  handle; int /*<<< orphan*/  tag; int /*<<< orphan*/  rid; } ;

/* Variables and functions */
 int EDOOFUS ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct bnxt_softc *softc, struct bnxt_bar_info *bar, int bar_num, bool shareable)
{
	uint32_t	flag;

	if (bar->res != NULL) {
		FUNC2(softc->dev, "Bar %d already mapped\n", bar_num);
		return EDOOFUS;
	}

	bar->rid = FUNC0(bar_num);
	flag = RF_ACTIVE;
	if (shareable)
		flag |= RF_SHAREABLE;

	if ((bar->res =
		FUNC1(softc->dev,
			   SYS_RES_MEMORY,
			   &bar->rid,
			   flag)) == NULL) {
		FUNC2(softc->dev,
		    "PCI BAR%d mapping failure\n", bar_num);
		return (ENXIO);
	}
	bar->tag = FUNC4(bar->res);
	bar->handle = FUNC3(bar->res);
	bar->size = FUNC5(bar->res);

	return 0;
}