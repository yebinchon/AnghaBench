
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {size_t cid_index; } ;
struct TYPE_4__ {TYPE_1__ terminate; } ;
struct ecore_queue_state_params {TYPE_2__ params; struct ecore_queue_sp_obj* q_obj; } ;
struct ecore_queue_sp_obj {size_t max_cos; int * cids; int cl_id; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_ERR (char*,int ,size_t) ;
 int ECORE_INVAL ;
 int ETH_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_ETH_TERMINATE ;
 int ecore_sp_post (struct bxe_softc*,int ,int ,int ,int ) ;

__attribute__((used)) static inline int ecore_q_send_terminate(struct bxe_softc *sc,
     struct ecore_queue_state_params *params)
{
 struct ecore_queue_sp_obj *o = params->q_obj;
 uint8_t cid_index = params->params.terminate.cid_index;

 if (cid_index >= o->max_cos) {
  ECORE_ERR("queue[%d]: cid_index (%d) is out of range\n",
     o->cl_id, cid_index);
  return ECORE_INVAL;
 }

 return ecore_sp_post(sc, RAMROD_CMD_ID_ETH_TERMINATE,
        o->cids[cid_index], 0,
        ETH_CONNECTION_TYPE);
}
