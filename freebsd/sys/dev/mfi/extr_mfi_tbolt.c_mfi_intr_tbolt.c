
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {int (* mfi_check_clear_intr ) (struct mfi_softc*) ;int mfi_io_lock; int mfi_flags; scalar_t__ mfi_detaching; } ;


 int MFI_FLAGS_QFRZN ;
 int mfi_startio (struct mfi_softc*) ;
 int mfi_tbolt_complete_cmd (struct mfi_softc*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct mfi_softc*) ;

void
mfi_intr_tbolt(void *arg)
{
 struct mfi_softc *sc = (struct mfi_softc *)arg;

 if (sc->mfi_check_clear_intr(sc) == 1) {
  return;
 }
 if (sc->mfi_detaching)
  return;
 mtx_lock(&sc->mfi_io_lock);
 mfi_tbolt_complete_cmd(sc);
 sc->mfi_flags &= ~MFI_FLAGS_QFRZN;
 mfi_startio(sc);
 mtx_unlock(&sc->mfi_io_lock);
 return;
}
