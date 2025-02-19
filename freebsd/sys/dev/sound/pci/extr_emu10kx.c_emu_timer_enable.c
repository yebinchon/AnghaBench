
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct emu_sc_info {scalar_t__* timer; scalar_t__ timerinterval; int lock; } ;


 int EMU_INTE ;
 int EMU_INTE_INTERTIMERENB ;
 int EMU_MAX_IRQ_CONSUMERS ;
 int EMU_TIMER ;
 int RANGE (int,int ,int) ;
 int emu_rd (struct emu_sc_info*,int ,int) ;
 int emu_wr (struct emu_sc_info*,int ,int,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
emu_timer_enable(struct emu_sc_info *sc, int timer, int go)
{
 uint32_t x;
 int ena_int;
 int i;

 if (timer < 0)
  return (-1);

 RANGE(timer, 0, EMU_MAX_IRQ_CONSUMERS-1);

 mtx_lock(&sc->lock);

 if ((go == 1) && (sc->timer[timer] < 0))
  sc->timer[timer] = -sc->timer[timer];
 if ((go == 0) && (sc->timer[timer] > 0))
  sc->timer[timer] = -sc->timer[timer];

 ena_int = 0;
 for (i = 0; i < EMU_MAX_IRQ_CONSUMERS; i++) {
  if (sc->timerinterval > sc->timer[i])
   sc->timerinterval = sc->timer[i];
  if (sc->timer[i] > 0)
   ena_int = 1;
 }

 emu_wr(sc, EMU_TIMER, sc->timerinterval & 0x03ff, 2);

 if (ena_int == 1) {
  x = emu_rd(sc, EMU_INTE, 4);
  x |= EMU_INTE_INTERTIMERENB;
  emu_wr(sc, EMU_INTE, x, 4);
 } else {
  x = emu_rd(sc, EMU_INTE, 4);
  x &= ~EMU_INTE_INTERTIMERENB;
  emu_wr(sc, EMU_INTE, x, 4);
 }
 mtx_unlock(&sc->lock);
 return (0);
}
