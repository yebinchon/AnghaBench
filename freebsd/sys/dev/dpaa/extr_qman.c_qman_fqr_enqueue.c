
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int * t_Handle ;
typedef int t_Error ;
typedef int t_DpaaFD ;
struct qman_softc {int sc_dev; } ;


 int E_NOT_SUPPORTED ;
 int QM_FQR_Enqueue (int *,int *,int ,int *) ;
 int device_printf (int ,char*) ;
 int * qman_portal_setup (struct qman_softc*) ;
 struct qman_softc* qman_sc ;
 int sched_pin () ;
 int sched_unpin () ;

t_Error
qman_fqr_enqueue(t_Handle fqr, uint32_t fqid_off, t_DpaaFD *frame)
{
 struct qman_softc *sc;
 t_Error error;
 t_Handle portal;

 sc = qman_sc;
 sched_pin();


 portal = qman_portal_setup(sc);
 if (portal == ((void*)0)) {
  device_printf(sc->sc_dev, "could not setup QMan portal\n");
  sched_unpin();
  return (E_NOT_SUPPORTED);
 }

 error = QM_FQR_Enqueue(fqr, portal, fqid_off, frame);

 sched_unpin();

 return (error);
}
