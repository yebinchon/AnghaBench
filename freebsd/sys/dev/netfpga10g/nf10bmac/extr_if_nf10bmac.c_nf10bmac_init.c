
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf10bmac_softc {int dummy; } ;


 int NF10BMAC_LOCK (struct nf10bmac_softc*) ;
 int NF10BMAC_UNLOCK (struct nf10bmac_softc*) ;
 int nf10bmac_init_locked (struct nf10bmac_softc*) ;

__attribute__((used)) static void
nf10bmac_init(void *xsc)
{
 struct nf10bmac_softc *sc;

 sc = (struct nf10bmac_softc *)xsc;
 NF10BMAC_LOCK(sc);
 nf10bmac_init_locked(sc);
 NF10BMAC_UNLOCK(sc);
}
