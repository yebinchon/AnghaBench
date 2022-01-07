
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_softc {scalar_t__ nfe_msix; int nfe_intrs; int nfe_irq_mask; } ;


 scalar_t__ NFE_READ (struct nfe_softc*,int ) ;
 int NFE_WRITE (struct nfe_softc*,int ,int ) ;

__attribute__((used)) static __inline void
nfe_enable_intr(struct nfe_softc *sc)
{

 if (sc->nfe_msix != 0) {

  if (NFE_READ(sc, sc->nfe_irq_mask) == 0)
   NFE_WRITE(sc, sc->nfe_irq_mask, sc->nfe_intrs);
 } else
  NFE_WRITE(sc, sc->nfe_irq_mask, sc->nfe_intrs);
}
