
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int request ;
struct TYPE_3__ {int* data; int status; int sense_data_len; } ;
typedef TYPE_1__ raid_path_error_info_elem_t ;
typedef int pqisrc_softstate_t ;
typedef int pqisrc_raid_req_t ;


 int ASCQ_LUN_NOT_READY_FORMAT_IN_PROGRESS ;
 int ASCQ_LUN_NOT_READY_INITIALIZING_CMD_REQ ;
 int ASC_LUN_NOT_READY ;
 int DBG_DISC (char*,int) ;
 int DBG_FUNC (char*) ;
 unsigned int LE_16 (int ) ;
 int PQI_STATUS_SUCCESS ;



 int SA_LV_OK ;







 int TEST_UNIT_READY ;
 int memset (int *,int ,int) ;
 int pqisrc_build_send_raid_request (int *,int *,int *,int ,int ,int ,int*,TYPE_1__*) ;
 int pqisrc_fetch_sense_info (int*,unsigned int,int*,int*,int*) ;
 int pqisrc_get_volume_offline_status (int *,int*) ;

__attribute__((used)) static uint8_t pqisrc_get_dev_vol_status(pqisrc_softstate_t *softs,
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

 DBG_FUNC("IN\n");

 memset(&request, 0, sizeof(request));
 ret = pqisrc_build_send_raid_request(softs, &request, ((void*)0), 0,
    TEST_UNIT_READY, 0, scsi3addr, &error_info);

 if (ret)
  goto error;
 sense_data = error_info.data;
 sense_data_len = LE_16(error_info.sense_data_len);

 if (sense_data_len > sizeof(error_info.data))
  sense_data_len = sizeof(error_info.data);

 pqisrc_fetch_sense_info(sense_data, sense_data_len, &sense_key, &asc,
  &ascq);

 scsi_status = error_info.status;


 if (scsi_status != 2 ||
     sense_key != 2 ||
     asc != ASC_LUN_NOT_READY) {
  return SA_LV_OK;
 }


 off_status = pqisrc_get_volume_offline_status(softs, scsi3addr);

 DBG_DISC("offline_status 0x%x\n", off_status);


 switch (off_status) {
 case 129:
 case 135:
 case 128:
 case 134:
 case 136:
 case 133:
 case 131:
 case 130:
 case 137:
  return off_status;
 case 132:




  if (ascq == ASCQ_LUN_NOT_READY_FORMAT_IN_PROGRESS ||
      ascq == ASCQ_LUN_NOT_READY_INITIALIZING_CMD_REQ)
   return off_status;
  break;
 }

 DBG_FUNC("OUT\n");

 return SA_LV_OK;

error:
 return 132;
}
