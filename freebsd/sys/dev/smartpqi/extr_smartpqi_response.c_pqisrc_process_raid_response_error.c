
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef int rcb_t ;
typedef int raid_path_error_info_elem_t ;
struct TYPE_4__ {scalar_t__ virt_addr; } ;
struct TYPE_5__ {TYPE_1__ err_buf_dma_mem; } ;
typedef TYPE_2__ pqisrc_softstate_t ;


 int DBG_ERR (char*,int) ;
 int DBG_FUNC (char*) ;
 int os_raid_response_error (int *,int *) ;

void pqisrc_process_raid_response_error(pqisrc_softstate_t *softs,
  rcb_t *rcb, uint16_t err_idx)
{
 raid_path_error_info_elem_t *err_info = ((void*)0);

 DBG_FUNC("IN");

 err_info = (raid_path_error_info_elem_t*)
   softs->err_buf_dma_mem.virt_addr +
   err_idx;

 if(err_info == ((void*)0)) {
  DBG_ERR("err_info structure is NULL  err_idx :%x", err_idx);
  return;
 }

 os_raid_response_error(rcb, err_info);

 DBG_FUNC("OUT");
}
