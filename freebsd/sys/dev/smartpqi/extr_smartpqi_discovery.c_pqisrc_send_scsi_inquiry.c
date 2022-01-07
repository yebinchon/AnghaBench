
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int request ;
typedef int raid_path_error_info_elem_t ;
typedef int pqisrc_softstate_t ;
typedef int pqisrc_raid_req_t ;


 int DBG_FUNC (char*) ;
 int PQI_STATUS_SUCCESS ;
 int SA_INQUIRY ;
 int memset (int *,int ,int) ;
 int pqisrc_build_send_raid_request (int *,int *,int *,int,int ,int ,int *,int *) ;

__attribute__((used)) static int pqisrc_send_scsi_inquiry(pqisrc_softstate_t *softs,
 uint8_t *scsi3addr, uint16_t vpd_page, uint8_t *buff, int buf_len)
{
 int ret = PQI_STATUS_SUCCESS;
 pqisrc_raid_req_t request;
 raid_path_error_info_elem_t error_info;

 DBG_FUNC("IN\n");

 memset(&request, 0, sizeof(request));
 ret = pqisrc_build_send_raid_request(softs, &request, buff, buf_len,
        SA_INQUIRY, vpd_page, scsi3addr, &error_info);

 DBG_FUNC("OUT\n");
 return ret;
}
