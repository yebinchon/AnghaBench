
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct emu_sc_info {int lock; TYPE_1__* ihandler; } ;
struct TYPE_2__ {int inte_mask; int * irq_func; int * softc; scalar_t__ intr_mask; } ;


 int EMU_INTE ;
 int EMU_MAX_IRQ_CONSUMERS ;
 int emu_rd (struct emu_sc_info*,int ,int) ;
 int emu_wr (struct emu_sc_info*,int ,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
emu_intr_unregister(struct emu_sc_info *sc, int hnumber)
{
 uint32_t x;
 int i;

 mtx_lock(&sc->lock);

 if (sc->ihandler[hnumber].inte_mask == 0) {
  mtx_unlock(&sc->lock);
  return (-1);
 }

 x = emu_rd(sc, EMU_INTE, 4);
 x &= ~sc->ihandler[hnumber].inte_mask;

 sc->ihandler[hnumber].inte_mask = 0;
 sc->ihandler[hnumber].intr_mask = 0;
 sc->ihandler[hnumber].softc = ((void*)0);
 sc->ihandler[hnumber].irq_func = ((void*)0);


 for (i = 0; i < EMU_MAX_IRQ_CONSUMERS; i++)
  if (sc->ihandler[i].inte_mask != 0)
   x |= sc->ihandler[i].inte_mask;

 emu_wr(sc, EMU_INTE, x, 4);

 mtx_unlock(&sc->lock);
 return (hnumber);
}
