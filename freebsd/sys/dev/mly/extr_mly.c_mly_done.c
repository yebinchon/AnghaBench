
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ flag; } ;
struct TYPE_5__ {scalar_t__ command_id; int residue; void* sense_length; void* status; } ;
union mly_status_packet {TYPE_3__ mmbox; TYPE_2__ status; } ;
typedef scalar_t__ u_int16_t ;
struct mly_softc {size_t mly_mmbox_status_index; int mly_state; int mly_task_complete; int mly_odbr; struct mly_command* mly_command; TYPE_1__* mly_mmbox; int mly_idbr; scalar_t__ mly_status_mailbox; } ;
struct mly_command {int mc_flags; int mc_resid; void* mc_sense; void* mc_status; } ;
struct TYPE_4__ {union mly_status_packet* mmm_status; } ;


 int MLY_AM_STSREADY ;
 int MLY_ASSERT_LOCKED (struct mly_softc*) ;
 int MLY_CMD_BUSY ;
 void* MLY_GET_REG (struct mly_softc*,scalar_t__) ;
 scalar_t__ MLY_GET_REG2 (struct mly_softc*,scalar_t__) ;
 int MLY_GET_REG4 (struct mly_softc*,scalar_t__) ;
 int MLY_HM_STSACK ;
 int MLY_HM_STSREADY ;
 int MLY_MMBOX_STATUS ;
 scalar_t__ MLY_ODBR_TRUE (struct mly_softc*,int ) ;
 int MLY_SET_REG (struct mly_softc*,int ,int ) ;
 scalar_t__ MLY_SLOT_MAX ;
 scalar_t__ MLY_SLOT_START ;
 int MLY_STATE_INTERRUPTS_ON ;
 int mly_complete (struct mly_softc*) ;
 int mly_enqueue_complete (struct mly_command*) ;
 int mly_printf (struct mly_softc*,char*,scalar_t__,...) ;
 int mly_remove_busy (struct mly_command*) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static void
mly_done(struct mly_softc *sc)
{
    struct mly_command *mc;
    union mly_status_packet *sp;
    u_int16_t slot;
    int worked;

    MLY_ASSERT_LOCKED(sc);
    worked = 0;


    if (MLY_ODBR_TRUE(sc, MLY_HM_STSREADY)) {
 slot = MLY_GET_REG2(sc, sc->mly_status_mailbox);
 if (slot < MLY_SLOT_MAX) {
     mc = &sc->mly_command[slot - MLY_SLOT_START];
     mc->mc_status = MLY_GET_REG(sc, sc->mly_status_mailbox + 2);
     mc->mc_sense = MLY_GET_REG(sc, sc->mly_status_mailbox + 3);
     mc->mc_resid = MLY_GET_REG4(sc, sc->mly_status_mailbox + 4);
     mly_remove_busy(mc);
     mc->mc_flags &= ~MLY_CMD_BUSY;
     mly_enqueue_complete(mc);
     worked = 1;
 } else {

     mly_printf(sc, "got HM completion for illegal slot %u\n", slot);
 }

 MLY_SET_REG(sc, sc->mly_odbr, MLY_HM_STSREADY);
 MLY_SET_REG(sc, sc->mly_idbr, MLY_HM_STSACK);
    }


    if (MLY_ODBR_TRUE(sc, MLY_AM_STSREADY)) {
 for (;;) {
     sp = &sc->mly_mmbox->mmm_status[sc->mly_mmbox_status_index];


     if (sp->mmbox.flag == 0)
  break;


     slot = sp->status.command_id;
     if (slot < MLY_SLOT_MAX) {
  mc = &sc->mly_command[slot - MLY_SLOT_START];
  mc->mc_status = sp->status.status;
  mc->mc_sense = sp->status.sense_length;
  mc->mc_resid = sp->status.residue;
  mly_remove_busy(mc);
  mc->mc_flags &= ~MLY_CMD_BUSY;
  mly_enqueue_complete(mc);
  worked = 1;
     } else {

  mly_printf(sc, "got AM completion for illegal slot %u at %d\n",
      slot, sc->mly_mmbox_status_index);
     }


     sp->mmbox.flag = 0;
     sc->mly_mmbox_status_index = (sc->mly_mmbox_status_index + 1) % MLY_MMBOX_STATUS;
 }

 MLY_SET_REG(sc, sc->mly_odbr, MLY_AM_STSREADY);
    }

    if (worked) {
 if (sc->mly_state & MLY_STATE_INTERRUPTS_ON)
     taskqueue_enqueue(taskqueue_thread, &sc->mly_task_complete);
 else
     mly_complete(sc);
    }
}
