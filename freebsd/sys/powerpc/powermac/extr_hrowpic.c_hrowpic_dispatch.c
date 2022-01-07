
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef size_t u_int ;
struct trapframe {int dummy; } ;
struct hrowpic_softc {int * sc_vector; } ;
typedef int device_t ;


 int HPIC_PRIMARY ;
 int HPIC_SECONDARY ;
 int HPIC_STATUS ;
 size_t HROWPIC_IRQMAX ;
 struct hrowpic_softc* device_get_softc (int ) ;
 int hrowpic_read_reg (struct hrowpic_softc*,int ,int ) ;
 int powerpc_dispatch_intr (int ,struct trapframe*) ;

__attribute__((used)) static void
hrowpic_dispatch(device_t dev, struct trapframe *tf)
{
 struct hrowpic_softc *sc;
 uint64_t mask;
 uint32_t reg;
 u_int irq;

 sc = device_get_softc(dev);
 while (1) {
  mask = hrowpic_read_reg(sc, HPIC_STATUS, HPIC_SECONDARY);
  reg = hrowpic_read_reg(sc, HPIC_STATUS, HPIC_PRIMARY);
  mask = (mask << 32) | reg;
  if (mask == 0)
   break;

  irq = 0;
  while (irq < HROWPIC_IRQMAX) {
   if (mask & 1)
    powerpc_dispatch_intr(sc->sc_vector[irq], tf);
   mask >>= 1;
   irq++;
  }
 }
}
