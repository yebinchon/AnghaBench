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
struct cdev_priv {int /*<<< orphan*/  cdp_inode; int /*<<< orphan*/  cdp_flags; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDP_ACTIVE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cdev_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cdev_priv* FUNC2 (struct cdev*) ; 
 int /*<<< orphan*/  cdevp_list ; 
 int /*<<< orphan*/  cdp_list ; 
 int /*<<< orphan*/  FUNC3 (struct cdev*) ; 
 int /*<<< orphan*/  devfs_generation ; 
 int /*<<< orphan*/  devfs_inos ; 
 int /*<<< orphan*/  devmtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC5(struct cdev *dev)
{
	struct cdev_priv *cdp;

	FUNC4(&devmtx, MA_OWNED);
	cdp = FUNC2(dev);
	cdp->cdp_flags |= CDP_ACTIVE;
	cdp->cdp_inode = FUNC1(devfs_inos);
	FUNC3(dev);
	FUNC0(&cdevp_list, cdp, cdp_list);
	devfs_generation++;
}