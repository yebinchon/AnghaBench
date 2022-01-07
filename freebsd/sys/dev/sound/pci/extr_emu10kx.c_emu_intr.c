
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct emu_sc_info {int dbg_level; int dev; scalar_t__ is_ca0102; scalar_t__ is_ca0108; TYPE_1__* ihandler; } ;
struct TYPE_2__ {int intr_mask; int (* irq_func ) (int ,int) ;int softc; } ;


 int EMU_IPR ;
 int EMU_IPR2 ;
 int EMU_IPR3 ;
 int EMU_MAX_IRQ_CONSUMERS ;
 int device_printf (int ,char*,int) ;
 int emu_rd (struct emu_sc_info*,int ,int) ;
 int emu_wr (struct emu_sc_info*,int ,int,int) ;
 int stub1 (int ,int) ;

__attribute__((used)) static void
emu_intr(void *p)
{
 struct emu_sc_info *sc = (struct emu_sc_info *)p;
 uint32_t stat, ack;
 int i;

 for (;;) {
  stat = emu_rd(sc, EMU_IPR, 4);
  ack = 0;
  if (stat == 0)
   break;
  emu_wr(sc, EMU_IPR, stat, 4);
  for (i = 0; i < EMU_MAX_IRQ_CONSUMERS; i++) {
   if ((((sc->ihandler[i].intr_mask) & stat) != 0) &&
       (((void *)sc->ihandler[i].irq_func) != ((void*)0))) {
    ack |= sc->ihandler[i].irq_func(sc->ihandler[i].softc,
        (sc->ihandler[i].intr_mask) & stat);
   }
  }
 if (sc->dbg_level > 1)
  if (stat & (~ack))
   device_printf(sc->dev, "Unhandled interrupt: %08x\n", stat & (~ack));

 }

 if ((sc->is_ca0102) || (sc->is_ca0108))
  for (;;) {
   stat = emu_rd(sc, EMU_IPR2, 4);
   ack = 0;
   if (stat == 0)
    break;
   emu_wr(sc, EMU_IPR2, stat, 4);
   if (sc->dbg_level > 1)
    device_printf(sc->dev, "EMU_IPR2: %08x\n", stat);

   break;

  }

 if (sc->is_ca0102)
  for (;;) {
   stat = emu_rd(sc, EMU_IPR3, 4);
   ack = 0;
   if (stat == 0)
    break;
   emu_wr(sc, EMU_IPR3, stat, 4);
   if (sc->dbg_level > 1)
    device_printf(sc->dev, "EMU_IPR3: %08x\n", stat);

   break;

  }
}
