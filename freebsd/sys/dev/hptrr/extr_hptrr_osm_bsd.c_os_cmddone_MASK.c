#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {void* status; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct TYPE_10__ {scalar_t__ data_out; scalar_t__ data_in; } ;
struct TYPE_13__ {int Result; TYPE_2__ flags; int /*<<< orphan*/  priv; } ;
struct TYPE_12__ {int /*<<< orphan*/  dma_map; TYPE_3__* vbus_ext; int /*<<< orphan*/  timeout; union ccb* ccb; } ;
struct TYPE_11__ {int /*<<< orphan*/  io_dmat; } ;
typedef  TYPE_4__* POS_CMDEXT ;
typedef  TYPE_5__* PCOMMAND ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 void* CAM_BUSY ; 
 void* CAM_DEV_NOT_THERE ; 
 void* CAM_REQ_CMP ; 
 void* CAM_REQ_INVALID ; 
 void* CAM_SCSI_STATUS_ERROR ; 
 void* CAM_SEL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  RETURN_BAD_DEVICE 133 
#define  RETURN_DEVICE_BUSY 132 
#define  RETURN_INVALID_REQUEST 131 
#define  RETURN_RETRY 130 
#define  RETURN_SELECTION_TIMEOUT 129 
#define  RETURN_SUCCESS 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (union ccb*) ; 

__attribute__((used)) static void FUNC7(PCOMMAND pCmd)
{
	POS_CMDEXT ext = (POS_CMDEXT)pCmd->priv;
	union ccb *ccb = ext->ccb;

	FUNC0(("os_cmddone(%p, %d)", pCmd, pCmd->Result));

	FUNC3(&ext->timeout);

	switch(pCmd->Result) {
	case RETURN_SUCCESS:
		ccb->ccb_h.status = CAM_REQ_CMP;
		break;
	case RETURN_BAD_DEVICE:
		ccb->ccb_h.status = CAM_DEV_NOT_THERE;
		break;
	case RETURN_DEVICE_BUSY:
		ccb->ccb_h.status = CAM_BUSY;
		break;
	case RETURN_INVALID_REQUEST:
		ccb->ccb_h.status = CAM_REQ_INVALID;
		break;
	case RETURN_SELECTION_TIMEOUT:
		ccb->ccb_h.status = CAM_SEL_TIMEOUT;
		break;
	case RETURN_RETRY:
		ccb->ccb_h.status = CAM_BUSY;
		break;
	default:
		ccb->ccb_h.status = CAM_SCSI_STATUS_ERROR;
		break;
	}

	if (pCmd->flags.data_in) {
		FUNC1(ext->vbus_ext->io_dmat, ext->dma_map, BUS_DMASYNC_POSTREAD);
	}
	else if (pCmd->flags.data_out) {
		FUNC1(ext->vbus_ext->io_dmat, ext->dma_map, BUS_DMASYNC_POSTWRITE);
	}
	
	FUNC2(ext->vbus_ext->io_dmat, ext->dma_map);

	FUNC4(ext);
	FUNC5(pCmd);
	FUNC6(ccb);
}