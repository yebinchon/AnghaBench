
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint16_t ;
struct TYPE_6__ {int hc_rate; int flags; int sb_cq_index; int fw_sb_id; } ;
struct TYPE_5__ {int hc_rate; int flags; int sb_cq_index; int fw_sb_id; } ;
struct ecore_queue_init_params {int * cxts; TYPE_3__ rx; TYPE_2__ tx; } ;
struct TYPE_4__ {struct ecore_queue_init_params init; } ;
struct ecore_queue_state_params {TYPE_1__ params; struct ecore_queue_sp_obj* q_obj; } ;
struct ecore_queue_sp_obj {size_t max_cos; int (* complete_cmd ) (struct bxe_softc*,struct ecore_queue_sp_obj*,int ) ;int * cids; int type; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_MMIOWB () ;
 int ECORE_MSG (struct bxe_softc*,char*,int ,...) ;
 int ECORE_Q_CMD_INIT ;
 int ECORE_Q_FLG_HC ;
 int ECORE_Q_FLG_HC_EN ;
 int ECORE_Q_TYPE_HAS_RX ;
 int ECORE_Q_TYPE_HAS_TX ;
 int ECORE_SET_CTX_VALIDATION (struct bxe_softc*,int ,int ) ;
 int ECORE_SMP_MB () ;
 int ECORE_SUCCESS ;
 scalar_t__ ECORE_TEST_BIT (int ,int *) ;
 int ECORE_UPDATE_COALESCE_SB_INDEX (struct bxe_softc*,int ,int ,int,int) ;
 int stub1 (struct bxe_softc*,struct ecore_queue_sp_obj*,int ) ;

__attribute__((used)) static inline int ecore_q_init(struct bxe_softc *sc,
          struct ecore_queue_state_params *params)
{
 struct ecore_queue_sp_obj *o = params->q_obj;
 struct ecore_queue_init_params *init = &params->params.init;
 uint16_t hc_usec;
 uint8_t cos;


 if (ECORE_TEST_BIT(ECORE_Q_TYPE_HAS_TX, &o->type) &&
     ECORE_TEST_BIT(ECORE_Q_FLG_HC, &init->tx.flags)) {
  hc_usec = init->tx.hc_rate ? 1000000 / init->tx.hc_rate : 0;

  ECORE_UPDATE_COALESCE_SB_INDEX(sc, init->tx.fw_sb_id,
   init->tx.sb_cq_index,
   !ECORE_TEST_BIT(ECORE_Q_FLG_HC_EN, &init->tx.flags),
   hc_usec);
 }


 if (ECORE_TEST_BIT(ECORE_Q_TYPE_HAS_RX, &o->type) &&
     ECORE_TEST_BIT(ECORE_Q_FLG_HC, &init->rx.flags)) {
  hc_usec = init->rx.hc_rate ? 1000000 / init->rx.hc_rate : 0;

  ECORE_UPDATE_COALESCE_SB_INDEX(sc, init->rx.fw_sb_id,
   init->rx.sb_cq_index,
   !ECORE_TEST_BIT(ECORE_Q_FLG_HC_EN, &init->rx.flags),
   hc_usec);
 }


 for (cos = 0; cos < o->max_cos; cos++) {
  ECORE_MSG(sc, "setting context validation. cid %d, cos %d\n",
     o->cids[cos], cos);
  ECORE_MSG(sc, "context pointer %p\n", init->cxts[cos]);
  ECORE_SET_CTX_VALIDATION(sc, init->cxts[cos], o->cids[cos]);
 }


 o->complete_cmd(sc, o, ECORE_Q_CMD_INIT);

 ECORE_MMIOWB();
 ECORE_SMP_MB();

 return ECORE_SUCCESS;
}
