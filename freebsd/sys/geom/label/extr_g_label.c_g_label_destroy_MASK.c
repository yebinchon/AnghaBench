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
struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int /*<<< orphan*/  name; } ;
struct g_geom {int /*<<< orphan*/  consumer; int /*<<< orphan*/  provider; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 struct g_provider* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct g_provider*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int
FUNC4(struct g_geom *gp, boolean_t force)
{
	struct g_provider *pp;

	FUNC3();
	pp = FUNC1(&gp->provider);
	if (pp != NULL && (pp->acr != 0 || pp->acw != 0 || pp->ace != 0)) {
		if (force) {
			FUNC0(0, "Provider %s is still open, so it "
			    "can't be definitely removed.", pp->name);
		} else {
			FUNC0(1,
			    "Provider %s is still open (r%dw%de%d).", pp->name,
			    pp->acr, pp->acw, pp->ace);
			return (EBUSY);
		}
	} else if (pp != NULL)
		FUNC0(1, "Label %s removed.", pp->name);
	FUNC2(FUNC1(&gp->consumer));
	return (0);
}