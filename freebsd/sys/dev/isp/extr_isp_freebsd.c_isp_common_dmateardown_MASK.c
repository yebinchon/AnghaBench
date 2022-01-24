#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int flags; } ;
struct ccb_scsiio {TYPE_1__ ccb_h; } ;
struct TYPE_7__ {int /*<<< orphan*/  dmat; } ;
struct TYPE_8__ {TYPE_2__ isp_osinfo; } ;
typedef  TYPE_3__ ispsoftc_t ;
struct TYPE_9__ {int /*<<< orphan*/  dmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int CAM_DIR_IN ; 
 int CAM_DIR_MASK ; 
 TYPE_5__* FUNC0 (struct ccb_scsiio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(ispsoftc_t *isp, struct ccb_scsiio *csio, uint32_t hdl)
{
	if ((csio->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN) {
		FUNC1(isp->isp_osinfo.dmat, FUNC0(csio)->dmap, BUS_DMASYNC_POSTREAD);
	} else {
		FUNC1(isp->isp_osinfo.dmat, FUNC0(csio)->dmap, BUS_DMASYNC_POSTWRITE);
	}
	FUNC2(isp->isp_osinfo.dmat, FUNC0(csio)->dmap);
}