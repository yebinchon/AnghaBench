
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_QmReceivedFrameCallback ;
typedef int * t_Handle ;
typedef int t_Error ;
struct qman_softc {int sc_dev; } ;


 int E_NOT_SUPPORTED ;
 int QM_FQR_RegisterCB (int *,int *,int *) ;
 int device_printf (int ,char*) ;
 int * qman_portal_setup (struct qman_softc*) ;
 struct qman_softc* qman_sc ;
 int sched_pin () ;
 int sched_unpin () ;

t_Error
qman_fqr_register_cb(t_Handle fqr, t_QmReceivedFrameCallback *callback,
    t_Handle app)
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

 error = QM_FQR_RegisterCB(fqr, callback, app);

 sched_unpin();

 return (error);
}
