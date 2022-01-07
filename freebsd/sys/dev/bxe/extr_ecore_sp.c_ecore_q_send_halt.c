
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_queue_state_params {struct ecore_queue_sp_obj* q_obj; } ;
struct ecore_queue_sp_obj {int * cids; scalar_t__ cl_id; } ;
struct bxe_softc {int dummy; } ;
typedef scalar_t__ ecore_dma_addr_t ;


 size_t ECORE_PRIMARY_CID_INDEX ;
 int ETH_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_ETH_HALT ;
 int ecore_sp_post (struct bxe_softc*,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static inline int ecore_q_send_halt(struct bxe_softc *sc,
        struct ecore_queue_state_params *params)
{
 struct ecore_queue_sp_obj *o = params->q_obj;


 ecore_dma_addr_t data_mapping = 0;
 data_mapping = (ecore_dma_addr_t)o->cl_id;







 return ecore_sp_post(sc,
        RAMROD_CMD_ID_ETH_HALT,
        o->cids[ECORE_PRIMARY_CID_INDEX],
        data_mapping,
        ETH_CONNECTION_TYPE);
}
