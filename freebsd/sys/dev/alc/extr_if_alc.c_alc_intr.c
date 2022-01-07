
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct alc_softc {int alc_int_task; int alc_tq; } ;


 int ALC_INTRS ;
 int ALC_INTR_STATUS ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int ) ;
 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int INTR_DIS_INT ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
alc_intr(void *arg)
{
 struct alc_softc *sc;
 uint32_t status;

 sc = (struct alc_softc *)arg;

 status = CSR_READ_4(sc, ALC_INTR_STATUS);
 if ((status & ALC_INTRS) == 0)
  return (FILTER_STRAY);

 CSR_WRITE_4(sc, ALC_INTR_STATUS, INTR_DIS_INT);
 taskqueue_enqueue(sc->alc_tq, &sc->alc_int_task);

 return (FILTER_HANDLED);
}
