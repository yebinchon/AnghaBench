
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {scalar_t__ MFA_enabled; int mfi_io_lock; } ;
struct mfi_command {int cm_flags; } ;


 int MA_OWNED ;
 int MFI_ON_MFIQ_BUSY ;
 int mfi_remove_busy (struct mfi_command*) ;
 int mfi_std_send_frame (struct mfi_softc*,struct mfi_command*) ;
 int mfi_tbolt_send_frame (struct mfi_softc*,struct mfi_command*) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
mfi_send_frame(struct mfi_softc *sc, struct mfi_command *cm)
{
 int error;

 mtx_assert(&sc->mfi_io_lock, MA_OWNED);

 if (sc->MFA_enabled)
  error = mfi_tbolt_send_frame(sc, cm);
 else
  error = mfi_std_send_frame(sc, cm);

 if (error != 0 && (cm->cm_flags & MFI_ON_MFIQ_BUSY) != 0)
  mfi_remove_busy(cm);

 return (error);
}
