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
struct disk {int d_goneflag; scalar_t__ d_init_level; struct g_geom* d_geom; } ;

/* Variables and functions */
 scalar_t__ DISK_INIT_DONE ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct g_provider* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct g_provider*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct g_provider*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct disk*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct disk*) ; 
 int /*<<< orphan*/  mtxpool_sleep ; 
 int /*<<< orphan*/  provider ; 

void
FUNC6(struct disk *dp)
{
	struct g_geom *gp;
	struct g_provider *pp;

	FUNC4(mtxpool_sleep, dp);
	dp->d_goneflag = 1;

	/*
	 * If we're still in the process of creating this disk (the
	 * g_disk_create() function is still queued, or is in
	 * progress), the init level will not yet be DISK_INIT_DONE.
	 *
	 * If that is the case, g_disk_create() will see d_goneflag
	 * and take care of cleaning things up.
	 *
	 * If the disk has already been created, we default to
	 * withering the provider as usual below.
	 *
	 * If the caller has not set a d_gone() callback, he will
	 * not be any worse off by returning here, because the geom
	 * has not been fully setup in any case.
	 */
	if (dp->d_init_level < DISK_INIT_DONE) {
		FUNC5(mtxpool_sleep, dp);
		return;
	}
	FUNC5(mtxpool_sleep, dp);

	gp = dp->d_geom;
	if (gp != NULL) {
		pp = FUNC1(&gp->provider);
		if (pp != NULL) {
			FUNC0(FUNC2(pp, provider) == NULL,
			    ("geom %p has more than one provider", gp));
			FUNC3(pp, ENXIO);
		}
	}
}