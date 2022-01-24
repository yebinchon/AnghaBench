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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  request ;
struct TYPE_3__ {int* data; int status; int /*<<< orphan*/  sense_data_len; } ;
typedef  TYPE_1__ raid_path_error_info_elem_t ;
typedef  int /*<<< orphan*/  pqisrc_softstate_t ;
typedef  int /*<<< orphan*/  pqisrc_raid_req_t ;

/* Variables and functions */
 int ASCQ_LUN_NOT_READY_FORMAT_IN_PROGRESS ; 
 int ASCQ_LUN_NOT_READY_INITIALIZING_CMD_REQ ; 
 int ASC_LUN_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int PQI_STATUS_SUCCESS ; 
#define  SA_LV_ENCRYPTED_IN_NON_ENCRYPTED_CONTROLLER 137 
#define  SA_LV_ENCRYPTED_NO_KEY 136 
#define  SA_LV_NOT_AVAILABLE 135 
 int SA_LV_OK ; 
#define  SA_LV_PENDING_RPI 134 
#define  SA_LV_PLAINTEXT_IN_ENCRYPT_ONLY_CONTROLLER 133 
#define  SA_LV_STATUS_VPD_UNSUPPORTED 132 
#define  SA_LV_UNDERGOING_ENCRYPTION 131 
#define  SA_LV_UNDERGOING_ENCRYPTION_REKEYING 130 
#define  SA_LV_UNDERGOING_ERASE 129 
#define  SA_LV_UNDERGOING_RPI 128 
 int /*<<< orphan*/  TEST_UNIT_READY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int*,unsigned int,int*,int*,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static uint8_t FUNC7(pqisrc_softstate_t *softs,
	uint8_t *scsi3addr)
{
	int ret = PQI_STATUS_SUCCESS;
	uint8_t *sense_data;
	unsigned sense_data_len;
	uint8_t sense_key;
	uint8_t asc;
	uint8_t ascq;
	uint8_t off_status;
	uint8_t scsi_status;
	pqisrc_raid_req_t request;
	raid_path_error_info_elem_t error_info;

	FUNC1("IN\n");

	FUNC3(&request, 0, sizeof(request));	
	ret =  FUNC4(softs, &request, NULL, 0, 
				TEST_UNIT_READY, 0, scsi3addr, &error_info);
	
	if (ret)
		goto error;
	sense_data = error_info.data;
	sense_data_len = FUNC2(error_info.sense_data_len);

	if (sense_data_len > sizeof(error_info.data))
		sense_data_len = sizeof(error_info.data);

	FUNC5(sense_data, sense_data_len, &sense_key, &asc,
		&ascq);

	scsi_status = error_info.status;

	/* scsi status: "CHECK CONDN" /  SK: "not ready" ? */
	if (scsi_status != 2 ||
	    sense_key != 2 ||
	    asc != ASC_LUN_NOT_READY) {
		return SA_LV_OK;
	}

	/* Determine the reason for not ready state. */
	off_status = FUNC6(softs, scsi3addr);

	FUNC0("offline_status 0x%x\n", off_status);

	/* Keep volume offline in certain cases. */
	switch (off_status) {
	case SA_LV_UNDERGOING_ERASE:
	case SA_LV_NOT_AVAILABLE:
	case SA_LV_UNDERGOING_RPI:
	case SA_LV_PENDING_RPI:
	case SA_LV_ENCRYPTED_NO_KEY:
	case SA_LV_PLAINTEXT_IN_ENCRYPT_ONLY_CONTROLLER:
	case SA_LV_UNDERGOING_ENCRYPTION:
	case SA_LV_UNDERGOING_ENCRYPTION_REKEYING:
	case SA_LV_ENCRYPTED_IN_NON_ENCRYPTED_CONTROLLER:
		return off_status;
	case SA_LV_STATUS_VPD_UNSUPPORTED:
		/*
		 * If the VPD status page isn't available,
		 * use ASC/ASCQ to determine state.
		 */
		if (ascq == ASCQ_LUN_NOT_READY_FORMAT_IN_PROGRESS ||
		    ascq == ASCQ_LUN_NOT_READY_INITIALIZING_CMD_REQ)
			return off_status;
		break;
	}

	FUNC1("OUT\n");

	return SA_LV_OK;

error:
	return SA_LV_STATUS_VPD_UNSUPPORTED;
}