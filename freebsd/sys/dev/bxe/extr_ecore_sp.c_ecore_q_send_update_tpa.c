
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct tpa_update_ramrod_data {int dummy; } ;
struct ecore_queue_update_tpa_params {int dummy; } ;
struct TYPE_2__ {struct ecore_queue_update_tpa_params update_tpa; } ;
struct ecore_queue_state_params {TYPE_1__ params; struct ecore_queue_sp_obj* q_obj; } ;
struct ecore_queue_sp_obj {int func_id; int * cids; int rdata_mapping; scalar_t__ rdata; } ;
struct bxe_softc {int dummy; } ;
typedef int ecore_dma_addr_t ;


 int ECORE_MEMSET (struct tpa_update_ramrod_data*,int ,int) ;
 size_t ECORE_PRIMARY_CID_INDEX ;
 int ETH_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_ETH_TPA_UPDATE ;
 int SPE_HDR_T_FUNCTION_ID_SHIFT ;
 int ecore_q_fill_update_tpa_data (struct bxe_softc*,struct ecore_queue_sp_obj*,struct ecore_queue_update_tpa_params*,struct tpa_update_ramrod_data*) ;
 int ecore_sp_post (struct bxe_softc*,int ,int ,int ,int) ;

__attribute__((used)) static inline int ecore_q_send_update_tpa(struct bxe_softc *sc,
     struct ecore_queue_state_params *params)
{
 struct ecore_queue_sp_obj *o = params->q_obj;
 struct tpa_update_ramrod_data *rdata =
  (struct tpa_update_ramrod_data *)o->rdata;
 ecore_dma_addr_t data_mapping = o->rdata_mapping;
 struct ecore_queue_update_tpa_params *update_tpa_params =
  &params->params.update_tpa;
 uint16_t type;


 ECORE_MEMSET(rdata, 0, sizeof(*rdata));


 ecore_q_fill_update_tpa_data(sc, o, update_tpa_params, rdata);





 type = ETH_CONNECTION_TYPE |
  ((o->func_id) << SPE_HDR_T_FUNCTION_ID_SHIFT);







 return ecore_sp_post(sc, RAMROD_CMD_ID_ETH_TPA_UPDATE,
        o->cids[ECORE_PRIMARY_CID_INDEX],
        data_mapping, type);
}
