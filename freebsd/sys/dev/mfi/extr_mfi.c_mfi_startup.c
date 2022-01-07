
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {int mfi_flags; int mfi_ich; int mfi_config_lock; int mfi_io_lock; int (* mfi_enable_intr ) (struct mfi_softc*) ;} ;


 int MFI_FLAGS_SKINNY ;
 int config_intrhook_disestablish (int *) ;
 int mfi_ldprobe (struct mfi_softc*) ;
 int mfi_syspdprobe (struct mfi_softc*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct mfi_softc*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
mfi_startup(void *arg)
{
 struct mfi_softc *sc;

 sc = (struct mfi_softc *)arg;

 sc->mfi_enable_intr(sc);
 sx_xlock(&sc->mfi_config_lock);
 mtx_lock(&sc->mfi_io_lock);
 mfi_ldprobe(sc);
 if (sc->mfi_flags & MFI_FLAGS_SKINNY)
     mfi_syspdprobe(sc);
 mtx_unlock(&sc->mfi_io_lock);
 sx_xunlock(&sc->mfi_config_lock);

 config_intrhook_disestablish(&sc->mfi_ich);
}
