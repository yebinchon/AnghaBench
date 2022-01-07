
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {int mfi_config_lock; } ;


 int sx_xunlock (int *) ;

__attribute__((used)) static void
mfi_config_unlock(struct mfi_softc *sc, int locked)
{

 if (locked)
  sx_xunlock(&sc->mfi_config_lock);
}
