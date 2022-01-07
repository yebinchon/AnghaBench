
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_sc_info {int* timer; int lock; } ;


 int EMU_MAX_IRQ_CONSUMERS ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
emu_timer_create(struct emu_sc_info *sc)
{
 int i, timer;

 timer = -1;

 mtx_lock(&sc->lock);
 for (i = 0; i < EMU_MAX_IRQ_CONSUMERS; i++)
  if (sc->timer[i] == 0) {
   sc->timer[i] = -1;
   timer = i;
   mtx_unlock(&sc->lock);
   return (timer);
  }
 mtx_unlock(&sc->lock);

 return (-1);
}
