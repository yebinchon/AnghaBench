
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_sc_info {int* timer; scalar_t__ timerinterval; int lock; } ;


 int EMU_MAX_IRQ_CONSUMERS ;
 int EMU_TIMER ;
 int RANGE (int,int,int) ;
 int emu_wr (struct emu_sc_info*,int ,int,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
emu_timer_set(struct emu_sc_info *sc, int timer, int delay)
{
 int i;

 if (timer < 0)
  return (-1);

 RANGE(delay, 16, 1024);
 RANGE(timer, 0, EMU_MAX_IRQ_CONSUMERS-1);

 mtx_lock(&sc->lock);
 sc->timer[timer] = delay;
 for (i = 0; i < EMU_MAX_IRQ_CONSUMERS; i++)
  if (sc->timerinterval > sc->timer[i])
   sc->timerinterval = sc->timer[i];


 emu_wr(sc, EMU_TIMER, sc->timerinterval & 0x03ff, 2);
 mtx_unlock(&sc->lock);

 return (timer);
}
