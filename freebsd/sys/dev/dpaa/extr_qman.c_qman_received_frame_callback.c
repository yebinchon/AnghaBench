
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef struct qman_softc* t_Handle ;
typedef int t_DpaaFD ;
struct qman_softc {int sc_dev; } ;
typedef int e_RxStoreResponse ;


 int device_printf (int ,char*) ;
 int e_RX_STORE_RESPONSE_CONTINUE ;

e_RxStoreResponse
qman_received_frame_callback(t_Handle app, t_Handle qm_fqr, t_Handle qm_portal,
    uint32_t fqid_offset, t_DpaaFD *frame)
{
 struct qman_softc *sc;

 sc = app;

 device_printf(sc->sc_dev, "dummy callback for received frame.\n");
 return (e_RX_STORE_RESPONSE_CONTINUE);
}
