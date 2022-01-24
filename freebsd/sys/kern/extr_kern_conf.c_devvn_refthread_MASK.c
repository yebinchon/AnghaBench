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
struct vnode {int v_vflag; struct cdev* v_rdev; } ;
struct cdevsw {int dummy; } ;
struct cdev_priv {int cdp_flags; } ;
struct cdev {int si_flags; int /*<<< orphan*/  si_threadcount; struct cdevsw* si_devsw; } ;

/* Variables and functions */
 int CDP_SCHED_DTR ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int SI_ETERNAL ; 
 int VV_ETERNALDEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct cdev_priv* FUNC2 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  devmtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct cdevsw *
FUNC6(struct vnode *vp, struct cdev **devp, int *ref)
{
	struct cdevsw *csw;
	struct cdev_priv *cdp;
	struct cdev *dev;

	FUNC5(&devmtx, MA_NOTOWNED);
	if ((vp->v_vflag & VV_ETERNALDEV) != 0) {
		dev = vp->v_rdev;
		if (dev == NULL)
			return (NULL);
		FUNC0((dev->si_flags & SI_ETERNAL) != 0,
		    ("Not eternal cdev"));
		*ref = 0;
		csw = dev->si_devsw;
		FUNC0(csw != NULL, ("Eternal cdev is destroyed"));
		*devp = dev;
		return (csw);
	}

	csw = NULL;
	FUNC3();
	dev = vp->v_rdev;
	if (dev == NULL) {
		FUNC4();
		return (NULL);
	}
	cdp = FUNC2(dev);
	if ((cdp->cdp_flags & CDP_SCHED_DTR) == 0) {
		csw = dev->si_devsw;
		if (csw != NULL)
			FUNC1(&dev->si_threadcount, 1);
	}
	FUNC4();
	if (csw != NULL) {
		*devp = dev;
		*ref = 1;
	}
	return (csw);
}