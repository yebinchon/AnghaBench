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
typedef  int /*<<< orphan*/  uintmax_t ;
struct clonedevs {int /*<<< orphan*/  head; } ;
struct cdev_priv {int cdp_flags; } ;
struct cdev {int si_flags; int /*<<< orphan*/  si_name; } ;

/* Variables and functions */
 int CDP_SCHED_DTR ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cdev* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int SI_CLONELIST ; 
 int SI_NAMED ; 
 struct cdev_priv* FUNC4 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct cdev*) ; 
 scalar_t__ FUNC6 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC7 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct clonedevs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  si_clone ; 

void
FUNC11(struct clonedevs **cdp)
{
	struct cdev *dev;
	struct cdev_priv *cp;
	struct clonedevs *cd;
	
	cd = *cdp;
	if (cd == NULL)
		return;
	FUNC8();
	while (!FUNC1(&cd->head)) {
		dev = FUNC2(&cd->head);
		FUNC3(dev, si_clone);
		FUNC0(dev->si_flags & SI_CLONELIST,
		    ("Dev %p(%s) should be on clonelist", dev, dev->si_name));
		dev->si_flags &= ~SI_CLONELIST;
		cp = FUNC4(dev);
		if (!(cp->cdp_flags & CDP_SCHED_DTR)) {
			cp->cdp_flags |= CDP_SCHED_DTR;
			FUNC0(dev->si_flags & SI_NAMED,
				("Driver has goofed in cloning underways udev %jx unit %x",
				(uintmax_t)FUNC6(dev), FUNC7(dev)));
			FUNC5(dev);
		}
	}
	FUNC9();
	FUNC10(cd, M_DEVBUF);
	*cdp = NULL;
}