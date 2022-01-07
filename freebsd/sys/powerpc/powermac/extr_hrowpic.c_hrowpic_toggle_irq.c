
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct hrowpic_softc {int* sc_softreg; } ;


 int HPIC_ENABLE ;
 size_t HPIC_INT_TO_BANK (int) ;
 size_t HPIC_INT_TO_REGBIT (int) ;
 int HROWPIC_IRQMAX ;
 int KASSERT (int,char*) ;
 int hrowpic_write_reg (struct hrowpic_softc*,int ,size_t,int) ;

__attribute__((used)) static void
hrowpic_toggle_irq(struct hrowpic_softc *sc, int irq, int enable)
{
 u_int roffset;
 u_int rbit;

 KASSERT((irq > 0) && (irq <= HROWPIC_IRQMAX), ("en irq out of range"));




 if (irq == HROWPIC_IRQMAX)
  return;





 roffset = HPIC_INT_TO_BANK(irq);
 rbit = HPIC_INT_TO_REGBIT(irq);

 if (enable)
  sc->sc_softreg[roffset] |= (1 << rbit);
 else
  sc->sc_softreg[roffset] &= ~(1 << rbit);

 hrowpic_write_reg(sc, HPIC_ENABLE, roffset, sc->sc_softreg[roffset]);
}
