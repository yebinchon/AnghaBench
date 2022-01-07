
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint64_t ;
struct intr_irqsrc {int dummy; } ;
struct hirq {unsigned int irq; struct beripic_softc* sc; } ;
struct beripic_softc {int * res; int dev; TYPE_1__* irqs; } ;
struct TYPE_4__ {int td_intr_frame; } ;
struct TYPE_3__ {struct intr_irqsrc isrc; } ;


 size_t BP_CFG ;
 unsigned int BP_CFG_ENABLE ;
 unsigned int BP_CFG_IRQ_M ;
 size_t BP_IP_CLEAR ;
 size_t BP_IP_READ ;
 int FILTER_HANDLED ;
 unsigned int bus_read_8 (int ,int) ;
 int bus_write_8 (int ,int ,int) ;
 TYPE_2__* curthread ;
 int device_printf (int ,char*,int) ;
 int fls (unsigned int) ;
 scalar_t__ intr_isrc_dispatch (struct intr_irqsrc*,int ) ;

__attribute__((used)) static int
beri_pic_intr(void *arg)
{
 struct beripic_softc *sc;
 struct intr_irqsrc *isrc;
 struct hirq *h;
 uint64_t intr;
 uint64_t reg;
 int i;

 h = arg;
 sc = h->sc;

 intr = bus_read_8(sc->res[BP_IP_READ], 0);
 while ((i = fls(intr)) != 0) {
  i--;
  intr &= ~(1u << i);

  isrc = &sc->irqs[i].isrc;

  reg = bus_read_8(sc->res[BP_CFG], i * 8);
  if ((reg & BP_CFG_IRQ_M) != h->irq) {
   continue;
  }
  if ((reg & (BP_CFG_ENABLE)) == 0) {
   continue;
  }

  if (intr_isrc_dispatch(isrc, curthread->td_intr_frame) != 0) {
   device_printf(sc->dev, "Stray interrupt %u detected\n", i);
  }

  bus_write_8(sc->res[BP_IP_CLEAR], 0, (1 << i));
 }

 return (FILTER_HANDLED);
}
