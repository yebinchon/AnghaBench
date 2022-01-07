
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int request ;
typedef int pqisrc_softstate_t ;
typedef int pqisrc_raid_req_t ;
struct TYPE_4__ {int halt_event; } ;
typedef TYPE_1__ pqisrc_bmic_flush_cache_t ;
typedef enum pqisrc_flush_cache_event_type { ____Placeholder_pqisrc_flush_cache_event_type } pqisrc_flush_cache_event_type ;


 int DBG_ERR (char*,...) ;
 int DBG_FUNC (char*) ;
 int PQI_STATUS_FAILURE ;
 int PQI_STATUS_SUCCESS ;
 scalar_t__ RAID_CTLR_LUNID ;
 int SA_CACHE_FLUSH ;
 int memset (int *,int ,int) ;
 TYPE_1__* os_mem_alloc (int *,int) ;
 int os_mem_free (int *,void*,int) ;
 int pqisrc_build_send_raid_request (int *,int *,TYPE_1__*,int,int ,int ,int *,int *) ;
 scalar_t__ pqisrc_ctrl_offline (int *) ;

int pqisrc_flush_cache( pqisrc_softstate_t *softs,
   enum pqisrc_flush_cache_event_type event_type)
{
 int rval = PQI_STATUS_SUCCESS;
 pqisrc_raid_req_t request;
 pqisrc_bmic_flush_cache_t *flush_buff = ((void*)0);

 DBG_FUNC("IN\n");

 if (pqisrc_ctrl_offline(softs))
  return PQI_STATUS_FAILURE;

 flush_buff = os_mem_alloc(softs, sizeof(pqisrc_bmic_flush_cache_t));
 if (!flush_buff) {
  DBG_ERR("Failed to allocate memory for flush cache params\n");
  rval = PQI_STATUS_FAILURE;
  return rval;
 }

 flush_buff->halt_event = event_type;

 memset(&request, 0, sizeof(request));

 rval = pqisrc_build_send_raid_request(softs, &request, flush_buff,
   sizeof(*flush_buff), SA_CACHE_FLUSH, 0,
   (uint8_t *)RAID_CTLR_LUNID, ((void*)0));
 if (rval) {
  DBG_ERR("error in build send raid req ret=%d\n", rval);
 }

 if (flush_buff)
  os_mem_free(softs, (void *)flush_buff,
   sizeof(pqisrc_bmic_flush_cache_t));

 DBG_FUNC("OUT\n");

 return rval;
}
