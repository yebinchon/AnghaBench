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
struct inode {int dummy; } ;
struct ib_xrcd {int /*<<< orphan*/  usecnt; struct inode* inode; } ;
struct ib_uverbs_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_xrcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_uverbs_device*,struct inode*) ; 

void FUNC3(struct ib_uverbs_device *dev,
			    struct ib_xrcd *xrcd)
{
	struct inode *inode;

	inode = xrcd->inode;
	if (inode && !FUNC0(&xrcd->usecnt))
		return;

	FUNC1(xrcd);

	if (inode)
		FUNC2(dev, inode);
}