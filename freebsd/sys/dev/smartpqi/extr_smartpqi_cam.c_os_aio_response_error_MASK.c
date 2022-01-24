#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {int status; } ;
struct ccb_scsiio {unsigned int sense_len; unsigned int sense_resid; TYPE_2__ ccb_h; int /*<<< orphan*/  sense_data; int /*<<< orphan*/  scsi_status; int /*<<< orphan*/  resid; } ;
struct TYPE_13__ {TYPE_9__* dvp; int /*<<< orphan*/ * softs; TYPE_1__* cm_ccb; int /*<<< orphan*/  status; } ;
typedef  TYPE_3__ rcb_t ;
typedef  int /*<<< orphan*/  pqisrc_softstate_t ;
struct TYPE_14__ {int service_resp; int status; scalar_t__ data_pres; int /*<<< orphan*/ * data; int /*<<< orphan*/  data_len; int /*<<< orphan*/  resd_count; } ;
typedef  TYPE_4__ aio_path_error_info_elem_t ;
struct TYPE_15__ {int offload_enabled; } ;
struct TYPE_11__ {int /*<<< orphan*/  csio; } ;

/* Variables and functions */
 int CAM_AUTOSNS_VALID ; 
 int CAM_REQUEUE_REQ ; 
 int CAM_REQ_ABORTED ; 
 void* CAM_REQ_CMP ; 
 int CAM_SCSI_STATUS_ERROR ; 
 scalar_t__ DATA_PRESENT_SENSE_DATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*,char*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  PQI_AIO_SERV_RESPONSE_COMPLETE 140 
#define  PQI_AIO_SERV_RESPONSE_FAILURE 139 
#define  PQI_AIO_SERV_RESPONSE_TMF_COMPLETE 138 
#define  PQI_AIO_SERV_RESPONSE_TMF_INCORRECT_LUN 137 
#define  PQI_AIO_SERV_RESPONSE_TMF_REJECTED 136 
#define  PQI_AIO_SERV_RESPONSE_TMF_SUCCEEDED 135 
#define  PQI_AIO_STATUS_AIO_PATH_DISABLED 134 
 int /*<<< orphan*/  PQI_AIO_STATUS_CHECK_CONDITION ; 
#define  PQI_AIO_STATUS_INVALID_DEVICE 133 
#define  PQI_AIO_STATUS_IO_ABORTED 132 
#define  PQI_AIO_STATUS_IO_ERROR 131 
#define  PQI_AIO_STATUS_IO_NO_DEVICE 130 
#define  PQI_AIO_STATUS_OVERRUN 129 
#define  PQI_AIO_STATUS_UNDERRUN 128 
 int /*<<< orphan*/  REQUEST_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct ccb_scsiio*) ; 
 int /*<<< orphan*/  FUNC11 (union ccb*) ; 

void FUNC12(rcb_t *rcb, aio_path_error_info_elem_t *err_info)
{
	struct ccb_scsiio *csio;
	pqisrc_softstate_t *softs;

	FUNC1("IN\n");

        if (rcb == NULL)
		FUNC7("rcb is null");

	rcb->status = REQUEST_SUCCESS;
	csio = (struct ccb_scsiio *)&rcb->cm_ccb->csio;
	if (csio == NULL)
                FUNC7("csio is null");

	softs = rcb->softs;

	switch (err_info->service_resp) {
		case PQI_AIO_SERV_RESPONSE_COMPLETE:
			csio->ccb_h.status = err_info->status;
			break;
		case PQI_AIO_SERV_RESPONSE_FAILURE:
			switch(err_info->status) {
				case PQI_AIO_STATUS_IO_ABORTED:
					csio->ccb_h.status = CAM_REQ_ABORTED;
					FUNC2(rcb->dvp, "IO aborted\n");
					break;
				case PQI_AIO_STATUS_UNDERRUN:
					csio->ccb_h.status = CAM_REQ_CMP;
					csio->resid =
						FUNC4(err_info->resd_count);
					break;
				case PQI_AIO_STATUS_OVERRUN:
					csio->ccb_h.status = CAM_REQ_CMP;
					break;
				case PQI_AIO_STATUS_AIO_PATH_DISABLED:
					FUNC2(rcb->dvp,"AIO Path Disabled\n");
					rcb->dvp->offload_enabled = false;
					csio->ccb_h.status |= CAM_REQUEUE_REQ;
					break;
				case PQI_AIO_STATUS_IO_ERROR:
				case PQI_AIO_STATUS_IO_NO_DEVICE:
				case PQI_AIO_STATUS_INVALID_DEVICE:
				default:
					FUNC2(rcb->dvp,"IO Error/Invalid/No device\n");
					csio->ccb_h.status |=
						CAM_SCSI_STATUS_ERROR;
					break;
			}
			break;
		case PQI_AIO_SERV_RESPONSE_TMF_COMPLETE:
		case PQI_AIO_SERV_RESPONSE_TMF_SUCCEEDED:
			csio->ccb_h.status = CAM_REQ_CMP;
			break;
		case PQI_AIO_SERV_RESPONSE_TMF_REJECTED:
		case PQI_AIO_SERV_RESPONSE_TMF_INCORRECT_LUN:
			FUNC2(rcb->dvp,"TMF rejected/Incorrect Lun\n");
			csio->ccb_h.status |= CAM_SCSI_STATUS_ERROR;
			break;
		default:
			FUNC2(rcb->dvp,"Scsi Status Error\n");
			csio->ccb_h.status |= CAM_SCSI_STATUS_ERROR;
			break;
	}
	if(err_info->data_pres == DATA_PRESENT_SENSE_DATA ) {
		csio->scsi_status = PQI_AIO_STATUS_CHECK_CONDITION;
		uint8_t *sense_data = NULL;
		unsigned sense_data_len = FUNC3(err_info->data_len);
		if (sense_data_len)
			sense_data = err_info->data;
		FUNC0(rcb->dvp, "SCSI_STATUS_CHECK_COND  sense size %u\n",
			sense_data_len);
		FUNC6(&csio->sense_data, 0, csio->sense_len);
		if (sense_data)
			FUNC5(&csio->sense_data, sense_data, ((sense_data_len >
                        	csio->sense_len) ? csio->sense_len : sense_data_len));
		if (csio->sense_len > sense_data_len)
			csio->sense_resid = csio->sense_len - sense_data_len;
        	else
			csio->sense_resid = 0;
		csio->ccb_h.status = CAM_SCSI_STATUS_ERROR | CAM_AUTOSNS_VALID;
	}

	FUNC10(softs, csio);
	FUNC8(rcb);
	FUNC9(rcb);
	FUNC11((union ccb *)csio);
	FUNC1("OUT\n");
}