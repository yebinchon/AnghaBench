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
struct g_provider {int dummy; } ;
struct g_geom {int /*<<< orphan*/  provider; } ;
struct disk {struct g_geom* d_geom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct g_provider* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct g_provider*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct g_provider*,int) ; 
 int /*<<< orphan*/  provider ; 

void
FUNC4(struct disk *dp, int flag)
{
	struct g_geom *gp;
	struct g_provider *pp;

	gp = dp->d_geom;
	if (gp != NULL) {
		pp = FUNC1(&gp->provider);
		if (pp != NULL) {
			FUNC0(FUNC2(pp, provider) == NULL,
			    ("geom %p has more than one provider", gp));
			FUNC3(pp, flag);
		}
	}
}