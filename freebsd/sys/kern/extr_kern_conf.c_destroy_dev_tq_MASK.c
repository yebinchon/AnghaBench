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
struct cdev {int dummy; } ;
struct cdev_priv {int cdp_flags; void (* cdp_dtr_cb ) (void*) ;void* cdp_dtr_cb_arg; struct cdev cdp_c; } ;

/* Variables and functions */
 int CDP_SCHED_DTR ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cdev_priv* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct cdev_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cdp_dtr_list ; 
 int /*<<< orphan*/  FUNC4 (struct cdev*) ; 
 int /*<<< orphan*/  dev_ddtr ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9(void *ctx, int pending)
{
	struct cdev_priv *cp;
	struct cdev *dev;
	void (*cb)(void *);
	void *cb_arg;

	FUNC5();
	while (!FUNC1(&dev_ddtr)) {
		cp = FUNC2(&dev_ddtr);
		dev = &cp->cdp_c;
		FUNC0(cp->cdp_flags & CDP_SCHED_DTR,
		    ("cdev %p in dev_destroy_tq without CDP_SCHED_DTR", cp));
		FUNC3(&dev_ddtr, cp, cdp_dtr_list);
		cb = cp->cdp_dtr_cb;
		cb_arg = cp->cdp_dtr_cb_arg;
		FUNC4(dev);
		FUNC8();
		FUNC6(dev);
		if (cb != NULL)
			cb(cb_arg);
		FUNC5();
	}
	FUNC7();
}