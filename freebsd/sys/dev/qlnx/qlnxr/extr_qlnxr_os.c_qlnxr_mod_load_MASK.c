#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  notify; int /*<<< orphan*/  remove; int /*<<< orphan*/  add; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  qlnxr_add ; 
 TYPE_1__ qlnxr_drv ; 
 int /*<<< orphan*/  qlnxr_notify ; 
 int /*<<< orphan*/  qlnxr_remove ; 

__attribute__((used)) static int
FUNC1(void)
{
	int ret;


	qlnxr_drv.add = qlnxr_add;
	qlnxr_drv.remove = qlnxr_remove;
	qlnxr_drv.notify = qlnxr_notify;

	ret = FUNC0(&qlnxr_drv);

	return (0);
}