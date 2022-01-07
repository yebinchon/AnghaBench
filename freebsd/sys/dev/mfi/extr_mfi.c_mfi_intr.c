
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct mfi_softc {size_t mfi_max_fw_cmds; TYPE_1__* mfi_comms; int (* mfi_read_fw_status ) (struct mfi_softc*) ;int mfi_io_lock; int mfi_flags; struct mfi_command* mfi_commands; scalar_t__ (* mfi_check_clear_intr ) (struct mfi_softc*) ;} ;
struct mfi_command {scalar_t__ cm_error; } ;
struct TYPE_2__ {size_t hw_pi; size_t hw_ci; size_t* hw_reply_q; } ;


 int MFI_FLAGS_QFRZN ;
 int mfi_complete (struct mfi_softc*,struct mfi_command*) ;
 int mfi_remove_busy (struct mfi_command*) ;
 int mfi_startio (struct mfi_softc*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ stub1 (struct mfi_softc*) ;
 int stub2 (struct mfi_softc*) ;

__attribute__((used)) static void
mfi_intr(void *arg)
{
 struct mfi_softc *sc;
 struct mfi_command *cm;
 uint32_t pi, ci, context;

 sc = (struct mfi_softc *)arg;

 if (sc->mfi_check_clear_intr(sc))
  return;

restart:
 pi = sc->mfi_comms->hw_pi;
 ci = sc->mfi_comms->hw_ci;
 mtx_lock(&sc->mfi_io_lock);
 while (ci != pi) {
  context = sc->mfi_comms->hw_reply_q[ci];
  if (context < sc->mfi_max_fw_cmds) {
   cm = &sc->mfi_commands[context];
   mfi_remove_busy(cm);
   cm->cm_error = 0;
   mfi_complete(sc, cm);
  }
  if (++ci == (sc->mfi_max_fw_cmds + 1))
   ci = 0;
 }

 sc->mfi_comms->hw_ci = ci;


 sc->mfi_flags &= ~MFI_FLAGS_QFRZN;
 mfi_startio(sc);
 mtx_unlock(&sc->mfi_io_lock);





 (void)sc->mfi_read_fw_status(sc);
 if (pi != sc->mfi_comms->hw_pi)
  goto restart;

 return;
}
