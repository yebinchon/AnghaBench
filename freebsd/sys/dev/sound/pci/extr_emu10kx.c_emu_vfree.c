
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_voice {int vbuf; int * slave; scalar_t__ busy; } ;
struct emu_sc_info {int lock; int mem; struct emu_voice* voice; } ;


 int NUM_G ;
 int emu_memfree (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
emu_vfree(struct emu_sc_info *sc, struct emu_voice *v)
{
 int i, r;

 mtx_lock(&sc->lock);
 for (i = 0; i < NUM_G; i++) {
  if (v == &sc->voice[i] && sc->voice[i].busy) {
   v->busy = 0;





   if (v->slave != ((void*)0))
    r = emu_memfree(&sc->mem, v->vbuf);
  }
 }
 mtx_unlock(&sc->lock);
}
