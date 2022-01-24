#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_6__ {int /*<<< orphan*/  fcp_cmnd_dl; int /*<<< orphan*/ * fcp_cmnd_cdb; } ;
struct TYPE_7__ {TYPE_1__ sf; } ;
struct TYPE_8__ {TYPE_2__ cdb_dl; int /*<<< orphan*/  fcp_cmnd_alen_datadir; int /*<<< orphan*/  fcp_cmnd_task_management; int /*<<< orphan*/  fcp_cmnd_task_attribute; int /*<<< orphan*/  fcp_cmnd_crn; int /*<<< orphan*/ * fcp_cmnd_lun; } ;
typedef  TYPE_3__ fcp_cmnd_iu_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(ispsoftc_t *isp, fcp_cmnd_iu_t *src, fcp_cmnd_iu_t *dst)
{
	int i;

	for (i = 0; i < 8; i++) {
		FUNC1(isp, &src->fcp_cmnd_lun[i], dst->fcp_cmnd_lun[i]);
	}
        FUNC1(isp, &src->fcp_cmnd_crn, dst->fcp_cmnd_crn);
        FUNC1(isp, &src->fcp_cmnd_task_attribute, dst->fcp_cmnd_task_attribute);
        FUNC1(isp, &src->fcp_cmnd_task_management, dst->fcp_cmnd_task_management);
        FUNC1(isp, &src->fcp_cmnd_alen_datadir, dst->fcp_cmnd_alen_datadir);
	for (i = 0; i < 16; i++) {
		FUNC1(isp, &src->cdb_dl.sf.fcp_cmnd_cdb[i], dst->cdb_dl.sf.fcp_cmnd_cdb[i]);
	}
	FUNC0(isp, &src->cdb_dl.sf.fcp_cmnd_dl, dst->cdb_dl.sf.fcp_cmnd_dl);
}