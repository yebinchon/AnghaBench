#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct scsi_inquiry_data {int /*<<< orphan*/  revision; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; } ;
struct TYPE_9__ {int flags; size_t target_id; size_t target_lun; } ;
struct TYPE_8__ {int* cdb_bytes; scalar_t__ cdb_ptr; } ;
struct ccb_scsiio {scalar_t__ dxfer_len; TYPE_2__ ccb_h; scalar_t__ data_ptr; TYPE_1__ cdb_io; } ;
struct TYPE_10__ {TYPE_4__*** device_list; } ;
typedef  TYPE_3__ pqisrc_softstate_t ;
struct TYPE_11__ {scalar_t__ devtype; scalar_t__ volume_offline; int /*<<< orphan*/  raid_level; } ;
typedef  TYPE_4__ pqi_scsi_dev_t ;

/* Variables and functions */
 int CAM_CDB_POINTER ; 
 int CAM_DIR_IN ; 
 int CAM_DIR_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DISK_DEVICE ; 
 int INQUIRY ; 
 scalar_t__ SHORT_INQUIRY_LENGTH ; 
 int /*<<< orphan*/  SID_PRODUCT_SIZE ; 
 int /*<<< orphan*/  SID_REVISION_SIZE ; 
 int /*<<< orphan*/  SID_VENDOR_SIZE ; 
 int SI_EVPD ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(pqisrc_softstate_t *softs, struct ccb_scsiio *csio)
{
	struct scsi_inquiry_data *inq = NULL;
	uint8_t *cdb = NULL;
	pqi_scsi_dev_t *device = NULL;

	FUNC0("IN\n");

 	cdb = (csio->ccb_h.flags & CAM_CDB_POINTER) ?
		(uint8_t *)csio->cdb_io.cdb_ptr : csio->cdb_io.cdb_bytes;
	if(cdb[0] == INQUIRY && 
		(cdb[1] & SI_EVPD) == 0 &&
		(csio->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN &&
		csio->dxfer_len >= SHORT_INQUIRY_LENGTH) {

		inq = (struct scsi_inquiry_data *)csio->data_ptr;

		device = softs->device_list[csio->ccb_h.target_id][csio->ccb_h.target_lun];

		/* Let the disks be probed and dealt with via CAM. Only for LD
		  let it fall through and inquiry be tweaked */
		if( !device || 	!FUNC2(device) ||
				(device->devtype != DISK_DEVICE)  || 
				FUNC1(device)) {
 	 		return;
		}

		FUNC4(inq->vendor, "MSCC",
       			SID_VENDOR_SIZE);
		FUNC4(inq->product, 
			FUNC3(device->raid_level),
       			SID_PRODUCT_SIZE);
		FUNC4(inq->revision, device->volume_offline?"OFF":"OK",
       			SID_REVISION_SIZE);
    	}

	FUNC0("OUT\n");
}