
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ecore_rss_config_obj {int config_rss; int engine_id; int raw; } ;
struct bxe_softc {int dummy; } ;
typedef int ecore_obj_type ;
typedef int ecore_dma_addr_t ;


 int ecore_init_raw_obj (int *,int ,int ,int ,void*,int ,int,unsigned long*,int ) ;
 int ecore_setup_rss ;

void ecore_init_rss_config_obj(struct bxe_softc *sc,
          struct ecore_rss_config_obj *rss_obj,
          uint8_t cl_id, uint32_t cid, uint8_t func_id, uint8_t engine_id,
          void *rdata, ecore_dma_addr_t rdata_mapping,
          int state, unsigned long *pstate,
          ecore_obj_type type)
{
 ecore_init_raw_obj(&rss_obj->raw, cl_id, cid, func_id, rdata,
      rdata_mapping, state, pstate, type);

 rss_obj->engine_id = engine_id;
 rss_obj->config_rss = ecore_setup_rss;
}
