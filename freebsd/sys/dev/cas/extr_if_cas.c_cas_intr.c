
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas_softc {int sc_intr_task; int sc_tq; } ;


 int CAS_INTMASK ;
 int CAS_INTR_SUMMARY ;
 int CAS_READ_4 (struct cas_softc*,int ) ;
 int CAS_STATUS_ALIAS ;
 int CAS_WRITE_4 (struct cas_softc*,int ,int) ;
 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 scalar_t__ __predict_false (int) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
cas_intr(void *v)
{
 struct cas_softc *sc = v;

 if (__predict_false((CAS_READ_4(sc, CAS_STATUS_ALIAS) &
     CAS_INTR_SUMMARY) == 0))
  return (FILTER_STRAY);


 CAS_WRITE_4(sc, CAS_INTMASK, 0xffffffff);
 taskqueue_enqueue(sc->sc_tq, &sc->sc_intr_task);

 return (FILTER_HANDLED);
}
