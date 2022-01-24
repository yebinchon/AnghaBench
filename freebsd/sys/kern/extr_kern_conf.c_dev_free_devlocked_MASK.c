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
struct cdev_priv {int cdp_flags; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int CDP_UNREF_DTR ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct cdev_priv*,int /*<<< orphan*/ ) ; 
 struct cdev_priv* FUNC2 (struct cdev*) ; 
 int /*<<< orphan*/  cdevp_free_list ; 
 int /*<<< orphan*/  cdp_list ; 
 int /*<<< orphan*/  devmtx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct cdev *cdev)
{
	struct cdev_priv *cdp;

	FUNC3(&devmtx, MA_OWNED);
	cdp = FUNC2(cdev);
	FUNC0((cdp->cdp_flags & CDP_UNREF_DTR) == 0,
	    ("destroy_dev() was not called after delist_dev(%p)", cdev));
	FUNC1(&cdevp_free_list, cdp, cdp_list);
}