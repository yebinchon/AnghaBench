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
struct timespec {int dummy; } ;
struct cdev {struct timespec si_ctime; struct timespec si_mtime; struct timespec si_atime; int /*<<< orphan*/  si_children; } ;
struct cdev_priv {struct cdev cdp_c; int /*<<< orphan*/  cdp_dirent0; int /*<<< orphan*/ * cdp_dirents; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAKEDEV_NOWAIT ; 
 int /*<<< orphan*/  M_CDEVP ; 
 int M_NOWAIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct cdev_priv* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*) ; 

struct cdev *
FUNC3(int flags)
{
	struct cdev_priv *cdp;
	struct cdev *cdev;
	struct timespec ts;

	cdp = FUNC1(sizeof *cdp, M_CDEVP, M_ZERO |
	    ((flags & MAKEDEV_NOWAIT) ? M_NOWAIT : M_WAITOK));
	if (cdp == NULL)
		return (NULL);

	cdp->cdp_dirents = &cdp->cdp_dirent0;

	cdev = &cdp->cdp_c;
	FUNC0(&cdev->si_children);
	FUNC2(&ts);
	cdev->si_atime = cdev->si_mtime = cdev->si_ctime = ts;

	return (cdev);
}