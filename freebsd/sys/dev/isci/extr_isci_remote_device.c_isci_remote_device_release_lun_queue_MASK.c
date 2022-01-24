#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cam_path {int dummy; } ;
struct ISCI_REMOTE_DEVICE {int frozen_lun_mask; int /*<<< orphan*/  index; TYPE_2__* domain; } ;
typedef  int lun_id_t ;
struct TYPE_4__ {TYPE_1__* controller; } ;
struct TYPE_3__ {int /*<<< orphan*/  sim; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_path*,int,int /*<<< orphan*/ ) ; 

void
FUNC4(struct ISCI_REMOTE_DEVICE *remote_device,
    lun_id_t lun)
{
	if (remote_device->frozen_lun_mask & (1 << lun)) {
		struct cam_path *path;

		remote_device->frozen_lun_mask &= ~(1 << lun);
		FUNC1(&path, NULL,
		    FUNC0(remote_device->domain->controller->sim),
		    remote_device->index, lun);
		FUNC3(path, 1, TRUE);
		FUNC2(path);
	}
}