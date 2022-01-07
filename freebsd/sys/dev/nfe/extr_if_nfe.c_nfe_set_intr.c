
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_softc {scalar_t__ nfe_msi; } ;


 int NFE_IRQ_MASK ;
 int NFE_IRQ_WANTED ;
 int NFE_WRITE (struct nfe_softc*,int ,int ) ;

__attribute__((used)) static void
nfe_set_intr(struct nfe_softc *sc)
{

 if (sc->nfe_msi != 0)
  NFE_WRITE(sc, NFE_IRQ_MASK, NFE_IRQ_WANTED);
}
