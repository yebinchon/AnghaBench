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
struct cdev_priv {int cdp_flags; void (* cdp_dtr_cb ) (void*) ;void* cdp_dtr_cb_arg; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int CDP_SCHED_DTR ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cdev_priv*,int /*<<< orphan*/ ) ; 
 struct cdev_priv* FUNC1 (struct cdev*) ; 
 int /*<<< orphan*/  cdp_dtr_list ; 
 int /*<<< orphan*/  dev_ddtr ; 
 int /*<<< orphan*/  dev_dtr_task ; 
 int /*<<< orphan*/  FUNC2 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  devmtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi_giant ; 

__attribute__((used)) static int
FUNC6(struct cdev *dev, void (*cb)(void *), void *arg)
{
	struct cdev_priv *cp;

	FUNC4(&devmtx, MA_OWNED);
	cp = FUNC1(dev);
	if (cp->cdp_flags & CDP_SCHED_DTR) {
		FUNC3();
		return (0);
	}
	FUNC2(dev);
	cp->cdp_flags |= CDP_SCHED_DTR;
	cp->cdp_dtr_cb = cb;
	cp->cdp_dtr_cb_arg = arg;
	FUNC0(&dev_ddtr, cp, cdp_dtr_list);
	FUNC3();
	FUNC5(taskqueue_swi_giant, &dev_dtr_task);
	return (1);
}