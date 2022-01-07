
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct age_softc {int age_int_task; int age_tq; } ;


 int AGE_INTRS ;
 int AGE_INTR_STATUS ;
 int CSR_READ_4 (struct age_softc*,int ) ;
 int CSR_WRITE_4 (struct age_softc*,int ,int) ;
 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int INTR_DIS_INT ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
age_intr(void *arg)
{
 struct age_softc *sc;
 uint32_t status;

 sc = (struct age_softc *)arg;

 status = CSR_READ_4(sc, AGE_INTR_STATUS);
 if (status == 0 || (status & AGE_INTRS) == 0)
  return (FILTER_STRAY);

 CSR_WRITE_4(sc, AGE_INTR_STATUS, status | INTR_DIS_INT);
 taskqueue_enqueue(sc->age_tq, &sc->age_int_task);

 return (FILTER_HANDLED);
}
