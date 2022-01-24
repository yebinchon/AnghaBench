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
struct cdev {scalar_t__ si_refcount; int /*<<< orphan*/ * si_devsw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct cdev*) ; 
 int /*<<< orphan*/  devmtx ; 
 int /*<<< orphan*/  FUNC5 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  si_list ; 

void
FUNC7(struct cdev *dev)
{
	int flag = 0;

	FUNC6(&devmtx, MA_NOTOWNED);
	FUNC2();
	dev->si_refcount--;
	FUNC0(dev->si_refcount >= 0,
	    ("dev_rel(%s) gave negative count", FUNC5(dev)));
	if (dev->si_devsw == NULL && dev->si_refcount == 0) {
		FUNC1(dev, si_list);
		flag = 1;
	}
	FUNC3();
	if (flag)
		FUNC4(dev);
}