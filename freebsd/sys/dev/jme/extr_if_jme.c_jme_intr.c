
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jme_softc {int jme_int_task; int jme_tq; } ;


 int CSR_READ_4 (struct jme_softc*,int ) ;
 int CSR_WRITE_4 (struct jme_softc*,int ,int ) ;
 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int JME_INTRS ;
 int JME_INTR_MASK_CLR ;
 int JME_INTR_REQ_STATUS ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
jme_intr(void *arg)
{
 struct jme_softc *sc;
 uint32_t status;

 sc = (struct jme_softc *)arg;

 status = CSR_READ_4(sc, JME_INTR_REQ_STATUS);
 if (status == 0 || status == 0xFFFFFFFF)
  return (FILTER_STRAY);

 CSR_WRITE_4(sc, JME_INTR_MASK_CLR, JME_INTRS);
 taskqueue_enqueue(sc->jme_tq, &sc->jme_int_task);

 return (FILTER_HANDLED);
}
