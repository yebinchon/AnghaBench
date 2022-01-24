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
struct g_raid_md_object {int /*<<< orphan*/  mdo_softc; } ;
struct g_raid_md_ddf_object {int /*<<< orphan*/  mdio_meta; int /*<<< orphan*/ * mdio_rootmount; int /*<<< orphan*/  mdio_start_co; scalar_t__ mdio_started; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct g_raid_md_object *md)
{
	struct g_raid_md_ddf_object *mdi;

	mdi = (struct g_raid_md_ddf_object *)md;
	if (!mdi->mdio_started) {
		mdi->mdio_started = 0;
		FUNC1(&mdi->mdio_start_co);
		FUNC0(1, md->mdo_softc,
		    "root_mount_rel %p", mdi->mdio_rootmount);
		FUNC3(mdi->mdio_rootmount);
		mdi->mdio_rootmount = NULL;
	}
	FUNC2(&mdi->mdio_meta);
	return (0);
}