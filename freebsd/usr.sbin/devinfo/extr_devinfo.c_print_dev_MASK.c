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
struct devinfo_dev {char* dd_name; char* dd_pnpinfo; char* dd_location; int dd_flags; } ;

/* Variables and functions */
 int DF_ENABLED ; 
 int DF_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ vflag ; 

__attribute__((used)) static void
FUNC1(struct devinfo_dev *dev)
{

	FUNC0("%s", dev->dd_name[0] ? dev->dd_name : "unknown");
	if (vflag && *dev->dd_pnpinfo)
		FUNC0(" pnpinfo %s", dev->dd_pnpinfo);
	if (vflag && *dev->dd_location)
		FUNC0(" at %s", dev->dd_location);
	if (!(dev->dd_flags & DF_ENABLED))
		FUNC0(" (disabled)");
	else if (dev->dd_flags & DF_SUSPENDED)
		FUNC0(" (suspended)");
}