
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_sc_info {int emu10kx_lock; int * cdev; scalar_t__ emu10kx_isopen; } ;


 int EBUSY ;
 int destroy_dev (int *) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
emu10kx_dev_uninit(struct emu_sc_info *sc)
{
 mtx_lock(&sc->emu10kx_lock);
 if (sc->emu10kx_isopen) {
  mtx_unlock(&sc->emu10kx_lock);
  return (EBUSY);
 }
 if (sc->cdev)
  destroy_dev(sc->cdev);
 sc->cdev = ((void*)0);

 mtx_destroy(&sc->emu10kx_lock);
 return (0);
}
