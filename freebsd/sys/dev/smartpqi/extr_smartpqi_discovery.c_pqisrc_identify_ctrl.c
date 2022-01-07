
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int request ;
typedef int pqisrc_softstate_t ;
typedef int pqisrc_raid_req_t ;
typedef int bmic_ident_ctrl_t ;


 int BMIC_IDENTIFY_CONTROLLER ;
 int DBG_FUNC (char*) ;
 int PQI_STATUS_SUCCESS ;
 scalar_t__ RAID_CTLR_LUNID ;
 int memset (int *,int ,int) ;
 int pqisrc_build_send_raid_request (int *,int *,int *,int,int ,int ,int *,int *) ;

__attribute__((used)) static int pqisrc_identify_ctrl(pqisrc_softstate_t *softs,
 bmic_ident_ctrl_t *buff)
{
 int ret = PQI_STATUS_SUCCESS;
 pqisrc_raid_req_t request;

 DBG_FUNC("IN\n");

 memset(&request, 0, sizeof(request));
 ret = pqisrc_build_send_raid_request(softs, &request, buff, sizeof(*buff),
    BMIC_IDENTIFY_CONTROLLER, 0, (uint8_t *)RAID_CTLR_LUNID, ((void*)0));
 DBG_FUNC("OUT\n");

 return ret;
}
