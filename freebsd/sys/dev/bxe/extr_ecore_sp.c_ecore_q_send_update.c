
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct ecore_queue_update_params {size_t cid_index; } ;
struct TYPE_2__ {struct ecore_queue_update_params update; } ;
struct ecore_queue_state_params {TYPE_1__ params; struct ecore_queue_sp_obj* q_obj; } ;
struct ecore_queue_sp_obj {size_t max_cos; int * cids; int cl_id; int rdata_mapping; scalar_t__ rdata; } ;
struct client_update_ramrod_data {int dummy; } ;
struct bxe_softc {int dummy; } ;
typedef int ecore_dma_addr_t ;


 int ECORE_ERR (char*,int ,size_t) ;
 int ECORE_INVAL ;
 int ECORE_MEMSET (struct client_update_ramrod_data*,int ,int) ;
 int ETH_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_ETH_CLIENT_UPDATE ;
 int ecore_q_fill_update_data (struct bxe_softc*,struct ecore_queue_sp_obj*,struct ecore_queue_update_params*,struct client_update_ramrod_data*) ;
 int ecore_sp_post (struct bxe_softc*,int ,int ,int ,int ) ;

__attribute__((used)) static inline int ecore_q_send_update(struct bxe_softc *sc,
          struct ecore_queue_state_params *params)
{
 struct ecore_queue_sp_obj *o = params->q_obj;
 struct client_update_ramrod_data *rdata =
  (struct client_update_ramrod_data *)o->rdata;
 ecore_dma_addr_t data_mapping = o->rdata_mapping;
 struct ecore_queue_update_params *update_params =
  &params->params.update;
 uint8_t cid_index = update_params->cid_index;

 if (cid_index >= o->max_cos) {
  ECORE_ERR("queue[%d]: cid_index (%d) is out of range\n",
     o->cl_id, cid_index);
  return ECORE_INVAL;
 }


 ECORE_MEMSET(rdata, 0, sizeof(*rdata));


 ecore_q_fill_update_data(sc, o, update_params, rdata);







 return ecore_sp_post(sc, RAMROD_CMD_ID_ETH_CLIENT_UPDATE,
        o->cids[cid_index], data_mapping,
        ETH_CONNECTION_TYPE);
}
