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
struct cdev_priv {int /*<<< orphan*/  cdp_flags; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDP_ACTIVE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 struct cdev_priv* FUNC0 (struct cdev*) ; 
 int /*<<< orphan*/  devfs_generation ; 
 int /*<<< orphan*/  devmtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(struct cdev *dev)
{
	struct cdev_priv *cdp;

	FUNC1(&devmtx, MA_OWNED);
	cdp = FUNC0(dev);
	cdp->cdp_flags &= ~CDP_ACTIVE;
	devfs_generation++;
}