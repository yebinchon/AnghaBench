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
struct free_cdevsw {int dummy; } ;
struct cdevsw {int dummy; } ;
struct cdev_priv_list {int dummy; } ;
struct cdev_priv {int /*<<< orphan*/  cdp_c; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_DEVT ; 
 struct cdevsw* FUNC0 (struct free_cdevsw*) ; 
 int /*<<< orphan*/  FUNC1 (struct free_cdevsw*) ; 
 int /*<<< orphan*/  FUNC2 (struct free_cdevsw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cdev_priv_list*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cdev_priv* FUNC4 (struct cdev_priv_list*) ; 
 int /*<<< orphan*/  FUNC5 (struct cdev_priv_list*) ; 
 int /*<<< orphan*/  FUNC6 (struct cdev_priv_list*,struct cdev_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cdevp_free_list ; 
 struct free_cdevsw cdevsw_gt_post_list ; 
 int /*<<< orphan*/  cdp_list ; 
 int /*<<< orphan*/  d_postfree_list ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  devmtx ; 
 int /*<<< orphan*/  FUNC8 (struct cdevsw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(void)
{
	struct cdev_priv_list cdp_free;
	struct free_cdevsw csw_free;
	struct cdev_priv *cdp;
	struct cdevsw *csw;

	FUNC9(&devmtx, MA_OWNED);

	/*
	 * Make the local copy of the list heads while the dev_mtx is
	 * held. Free it later.
	 */
	FUNC5(&cdp_free);
	FUNC3(&cdp_free, &cdevp_free_list, cdp_list);
	csw_free = cdevsw_gt_post_list;
	FUNC1(&cdevsw_gt_post_list);

	FUNC10(&devmtx);

	while ((cdp = FUNC4(&cdp_free)) != NULL) {
		FUNC6(&cdp_free, cdp, cdp_list);
		FUNC7(&cdp->cdp_c);
	}
	while ((csw = FUNC0(&csw_free)) != NULL) {
		FUNC2(&csw_free, d_postfree_list);
		FUNC8(csw, M_DEVT);
	}
}