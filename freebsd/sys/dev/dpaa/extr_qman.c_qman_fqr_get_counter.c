
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int * t_Handle ;
struct qman_softc {int sc_dev; } ;
typedef int e_QmFqrCounters ;


 int QM_FQR_GetCounter (int *,int *,int ,int ) ;
 int device_printf (int ,char*) ;
 int * qman_portal_setup (struct qman_softc*) ;
 struct qman_softc* qman_sc ;
 int sched_pin () ;
 int sched_unpin () ;

uint32_t
qman_fqr_get_counter(t_Handle fqr, uint32_t fqid_off,
    e_QmFqrCounters counter)
{
 struct qman_softc *sc;
 uint32_t val;
 t_Handle portal;

 sc = qman_sc;
 sched_pin();


 portal = qman_portal_setup(sc);
 if (portal == ((void*)0)) {
  device_printf(sc->sc_dev, "could not setup QMan portal\n");
  sched_unpin();
  return (0);
 }

 val = QM_FQR_GetCounter(fqr, portal, fqid_off, counter);

 sched_unpin();

 return (val);
}
