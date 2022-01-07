
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ale_softc {int ale_int_task; int ale_tq; } ;


 int ALE_INTRS ;
 int ALE_INTR_STATUS ;
 int CSR_READ_4 (struct ale_softc*,int ) ;
 int CSR_WRITE_4 (struct ale_softc*,int ,int ) ;
 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int INTR_DIS_INT ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
ale_intr(void *arg)
{
 struct ale_softc *sc;
 uint32_t status;

 sc = (struct ale_softc *)arg;

 status = CSR_READ_4(sc, ALE_INTR_STATUS);
 if ((status & ALE_INTRS) == 0)
  return (FILTER_STRAY);

 CSR_WRITE_4(sc, ALE_INTR_STATUS, INTR_DIS_INT);
 taskqueue_enqueue(sc->ale_tq, &sc->ale_int_task);

 return (FILTER_HANDLED);
}
