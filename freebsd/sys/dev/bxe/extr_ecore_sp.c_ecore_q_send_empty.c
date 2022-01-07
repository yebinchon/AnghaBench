
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_queue_state_params {struct ecore_queue_sp_obj* q_obj; } ;
struct ecore_queue_sp_obj {int * cids; } ;
struct bxe_softc {int dummy; } ;


 size_t ECORE_PRIMARY_CID_INDEX ;
 int ETH_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_ETH_EMPTY ;
 int ecore_sp_post (struct bxe_softc*,int ,int ,int ,int ) ;

__attribute__((used)) static inline int ecore_q_send_empty(struct bxe_softc *sc,
         struct ecore_queue_state_params *params)
{
 struct ecore_queue_sp_obj *o = params->q_obj;

 return ecore_sp_post(sc, RAMROD_CMD_ID_ETH_EMPTY,
        o->cids[ECORE_PRIMARY_CID_INDEX], 0,
        ETH_CONNECTION_TYPE);
}
