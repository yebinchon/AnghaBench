
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nfe_softc {int nfe_int_task; int nfe_tq; int nfe_irq_status; } ;


 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int NFE_READ (struct nfe_softc*,int ) ;
 int nfe_disable_intr (struct nfe_softc*) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
nfe_intr(void *arg)
{
 struct nfe_softc *sc;
 uint32_t status;

 sc = (struct nfe_softc *)arg;

 status = NFE_READ(sc, sc->nfe_irq_status);
 if (status == 0 || status == 0xffffffff)
  return (FILTER_STRAY);
 nfe_disable_intr(sc);
 taskqueue_enqueue(sc->nfe_tq, &sc->nfe_int_task);

 return (FILTER_HANDLED);
}
