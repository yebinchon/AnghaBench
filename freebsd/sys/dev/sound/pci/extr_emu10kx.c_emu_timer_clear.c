
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_sc_info {scalar_t__* timer; int lock; } ;


 scalar_t__ EMU_MAX_IRQ_CONSUMERS ;
 int RANGE (int,int ,scalar_t__) ;
 int emu_timer_enable (struct emu_sc_info*,int,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
emu_timer_clear(struct emu_sc_info *sc, int timer)
{
 if (timer < 0)
  return (-1);

 RANGE(timer, 0, EMU_MAX_IRQ_CONSUMERS-1);

 emu_timer_enable(sc, timer, 0);

 mtx_lock(&sc->lock);
 if (sc->timer[timer] != 0)
  sc->timer[timer] = 0;
 mtx_unlock(&sc->lock);

 return (timer);
}
