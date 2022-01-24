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
typedef  int /*<<< orphan*/  uintmax_t ;
struct ACPIRegionContent {int regtype; int /*<<< orphan*/  value; scalar_t__ addr; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  RegionContentList ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ACPIRegionContent* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ACPIRegionContent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aml_simulation_initialized ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ACPIRegionContent*) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 

__attribute__((used)) static void
FUNC9(const char *dumpfile)
{
	struct	ACPIRegionContent *rc;
	FILE	*fp;

	if (!aml_simulation_initialized) {
		return;
	}
	if ((fp = FUNC5(dumpfile, "w")) == NULL) {
		FUNC8("%s", dumpfile);
		return;
	}
	while (!FUNC0(&RegionContentList)) {
		rc = FUNC1(&RegionContentList);
		FUNC6(fp, "%d	0x%jx	0x%x\n",
		    rc->regtype, (uintmax_t)rc->addr, rc->value);
		FUNC3(&RegionContentList, rc, links);
		FUNC7(rc);
	}

	FUNC4(fp);
	FUNC2(&RegionContentList);
}