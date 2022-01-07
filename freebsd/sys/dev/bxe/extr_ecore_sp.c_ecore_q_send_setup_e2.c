
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_queue_state_params {struct ecore_queue_sp_obj* q_obj; } ;
struct ecore_queue_sp_obj {int * cids; int rdata_mapping; scalar_t__ rdata; } ;
struct client_init_ramrod_data {int dummy; } ;
struct bxe_softc {int dummy; } ;
typedef int ecore_dma_addr_t ;


 int ECORE_MEMSET (struct client_init_ramrod_data*,int ,int) ;
 size_t ECORE_PRIMARY_CID_INDEX ;
 int ETH_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_ETH_CLIENT_SETUP ;
 int ecore_q_fill_setup_data_cmn (struct bxe_softc*,struct ecore_queue_state_params*,struct client_init_ramrod_data*) ;
 int ecore_q_fill_setup_data_e2 (struct bxe_softc*,struct ecore_queue_state_params*,struct client_init_ramrod_data*) ;
 int ecore_sp_post (struct bxe_softc*,int,int ,int ,int ) ;

__attribute__((used)) static inline int ecore_q_send_setup_e2(struct bxe_softc *sc,
     struct ecore_queue_state_params *params)
{
 struct ecore_queue_sp_obj *o = params->q_obj;
 struct client_init_ramrod_data *rdata =
  (struct client_init_ramrod_data *)o->rdata;
 ecore_dma_addr_t data_mapping = o->rdata_mapping;
 int ramrod = RAMROD_CMD_ID_ETH_CLIENT_SETUP;


 ECORE_MEMSET(rdata, 0, sizeof(*rdata));


 ecore_q_fill_setup_data_cmn(sc, params, rdata);
 ecore_q_fill_setup_data_e2(sc, params, rdata);







 return ecore_sp_post(sc,
        ramrod,
        o->cids[ECORE_PRIMARY_CID_INDEX],
        data_mapping,
        ETH_CONNECTION_TYPE);
}
