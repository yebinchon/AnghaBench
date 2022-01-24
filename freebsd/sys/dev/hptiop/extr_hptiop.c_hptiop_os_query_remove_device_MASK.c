#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hpt_iop_hba {int /*<<< orphan*/  pciunit; int /*<<< orphan*/  pcidev; TYPE_1__* sim; } ;
struct cam_periph {int refcount; } ;
struct cam_path {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  path_id; } ;

/* Variables and functions */
 int CAM_REQ_CMP ; 
 struct cam_periph* FUNC0 (struct cam_path*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_path*) ; 

__attribute__((used)) static  int FUNC4(struct hpt_iop_hba * hba,
						int target_id)
{
	struct cam_periph       *periph = NULL;
	struct cam_path         *path;
	int                     status, retval = 0;

	status = FUNC2(&path, NULL, hba->sim->path_id, target_id, 0);

	if (status == CAM_REQ_CMP) {
		if ((periph = FUNC0(path, "da")) != NULL) {
			if (periph->refcount >= 1) {
				FUNC1(hba->pcidev, "%d ,"
					"target_id=0x%x,"
					"refcount=%d",
				    hba->pciunit, target_id, periph->refcount);
				retval = -1;
			}
		}
		FUNC3(path);
	}
	return retval;
}