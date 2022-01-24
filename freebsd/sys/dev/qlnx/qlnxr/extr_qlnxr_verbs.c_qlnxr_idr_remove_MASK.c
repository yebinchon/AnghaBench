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
typedef  int /*<<< orphan*/  u32 ;
struct qlnxr_dev {int /*<<< orphan*/  idr_lock; int /*<<< orphan*/  qpidr; int /*<<< orphan*/ * ha; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qlnxr_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct qlnxr_dev *dev, u32 id)
{
	qlnx_host_t	*ha;

	ha = dev->ha;

	FUNC1(ha, "enter\n");

	if (!FUNC0(dev))
		return;

	FUNC3(&dev->idr_lock);
	FUNC2(&dev->qpidr, id);
	FUNC4(&dev->idr_lock);

	FUNC1(ha, "exit \n");

	return;
}