
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int request ;
typedef int pqisrc_softstate_t ;
typedef int pqisrc_raid_req_t ;


 int DBG_FUNC (char*) ;
 scalar_t__ RAID_CTLR_LUNID ;
 int memset (int *,int ,int) ;
 int pqisrc_build_send_raid_request (int *,int *,void*,size_t,int ,int ,int *,int *) ;

__attribute__((used)) static int pqisrc_report_luns(pqisrc_softstate_t *softs, uint8_t cmd,
 void *buff, size_t buf_len)
{
 int ret;
 pqisrc_raid_req_t request;

 DBG_FUNC("IN\n");

 memset(&request, 0, sizeof(request));
 ret = pqisrc_build_send_raid_request(softs, &request, buff,
    buf_len, cmd, 0, (uint8_t *)RAID_CTLR_LUNID, ((void*)0));

 DBG_FUNC("OUT\n");

 return ret;
}
