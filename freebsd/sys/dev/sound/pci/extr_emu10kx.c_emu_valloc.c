
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_voice {int busy; } ;
struct emu_sc_info {int lock; struct emu_voice* voice; } ;


 int NUM_G ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

struct emu_voice *
emu_valloc(struct emu_sc_info *sc)
{
 struct emu_voice *v;
 int i;

 v = ((void*)0);
 mtx_lock(&sc->lock);
 for (i = 0; i < NUM_G && sc->voice[i].busy; i++);
 if (i < NUM_G) {
  v = &sc->voice[i];
  v->busy = 1;
 }
 mtx_unlock(&sc->lock);
 return (v);
}
