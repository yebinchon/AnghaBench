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
struct cdev_priv {scalar_t__ cdp_maxdirent; struct cdev_priv* cdp_dirents; int /*<<< orphan*/  cdp_inode; } ;
struct cdev {int /*<<< orphan*/ * si_cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CDEVP ; 
 int /*<<< orphan*/  M_DEVFS2 ; 
 struct cdev_priv* FUNC0 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cdev_priv*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct cdev *cdev)
{
	struct cdev_priv *cdp;

	cdp = FUNC0(cdev);
	if (cdev->si_cred != NULL)
		FUNC1(cdev->si_cred);
	FUNC2(cdp->cdp_inode);
	if (cdp->cdp_maxdirent > 0) 
		FUNC3(cdp->cdp_dirents, M_DEVFS2);
	FUNC3(cdp, M_CDEVP);
}