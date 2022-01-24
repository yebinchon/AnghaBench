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
struct ACPIRegionContent {void* value; void* addr; void* regtype; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,void**) ; 
 int /*<<< orphan*/  aml_simulation_initialized ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 void* FUNC4 (char*,char**,int) ; 

__attribute__((used)) static void
FUNC5(const char *dumpfile)
{
	char	buf[256], *np, *ep;
	struct	ACPIRegionContent rc;
	FILE	*fp;

	if (!aml_simulation_initialized) {
		return;
	}

	if ((fp = FUNC3(dumpfile, "r")) == NULL) {
		return;
	}

	while (FUNC2(buf, sizeof buf, fp) != NULL) {
		np = buf;
		/* reading region type */
		rc.regtype = FUNC4(np, &ep, 10);
		if (np == ep) {
			continue;
		}
		np = ep;

		/* reading address */
		rc.addr = FUNC4(np, &ep, 16);
		if (np == ep) {
			continue;
		}
		np = ep;

		/* reading value */
		rc.value = FUNC4(np, &ep, 16);
		if (np == ep) {
			continue;
		}
		FUNC0(rc.regtype, rc.addr, &rc.value);
	}

	FUNC1(fp);
}