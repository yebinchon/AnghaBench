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
struct disk {char* d_name; char* d_unit; int d_flags; int /*<<< orphan*/  d_ident; int /*<<< orphan*/  d_init_level; int /*<<< orphan*/ * d_geom; int /*<<< orphan*/  d_sectorsize; int /*<<< orphan*/ * d_devstat; int /*<<< orphan*/ * d_strategy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVSTAT_ALL_SUPPORTED ; 
 int /*<<< orphan*/  DEVSTAT_PRIORITY_MAX ; 
 int /*<<< orphan*/  DEVSTAT_TYPE_DIRECT ; 
 int DISKFLAG_RESERVED ; 
 int /*<<< orphan*/  DISK_INIT_NONE ; 
 int DISK_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int SPECNAMELEN ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_disk_create ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct disk*,int /*<<< orphan*/ ,struct disk*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,...) ; 
 int FUNC5 (scalar_t__*) ; 

void
FUNC6(struct disk *dp, int version)
{

	if (version != DISK_VERSION) {
		FUNC4("WARNING: Attempt to add disk %s%d %s",
		    dp->d_name, dp->d_unit,
		    " using incompatible ABI version of disk(9)\n");
		FUNC4("WARNING: Ignoring disk %s%d\n",
		    dp->d_name, dp->d_unit);
		return;
	}
	if (dp->d_flags & DISKFLAG_RESERVED) {
		FUNC4("WARNING: Attempt to add non-MPSAFE disk %s%d\n",
		    dp->d_name, dp->d_unit);
		FUNC4("WARNING: Ignoring disk %s%d\n",
		    dp->d_name, dp->d_unit);
		return;
	}
	FUNC0(dp->d_strategy != NULL, ("disk_create need d_strategy"));
	FUNC0(dp->d_name != NULL, ("disk_create need d_name"));
	FUNC0(*dp->d_name != 0, ("disk_create need d_name"));
	FUNC0(FUNC5(dp->d_name) < SPECNAMELEN - 4, ("disk name too long"));
	if (dp->d_devstat == NULL)
		dp->d_devstat = FUNC1(dp->d_name, dp->d_unit,
		    dp->d_sectorsize, DEVSTAT_ALL_SUPPORTED,
		    DEVSTAT_TYPE_DIRECT, DEVSTAT_PRIORITY_MAX);
	dp->d_geom = NULL;

	dp->d_init_level = DISK_INIT_NONE;

	FUNC2(dp->d_ident, sizeof(dp->d_ident));
	FUNC3(g_disk_create, dp, M_WAITOK, dp, NULL);
}