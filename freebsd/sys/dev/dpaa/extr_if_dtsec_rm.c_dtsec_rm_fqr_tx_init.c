
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * t_Handle ;
typedef scalar_t__ t_Error ;
struct dtsec_softc {int sc_dev; int sc_tx_conf_fqid; int * sc_tx_conf_fqr; int * sc_tx_fqr; int sc_port_tx_qman_chan; } ;


 int DTSEC_RM_FQR_TX_CONF_CHANNEL ;
 int DTSEC_RM_FQR_TX_CONF_WQ ;
 int DTSEC_RM_FQR_TX_WQ ;
 int EIO ;
 scalar_t__ E_OK ;
 int device_printf (int ,char*) ;
 int dtsec_rm_fqr_tx_confirm_callback ;
 int dtsec_rm_fqr_tx_free (struct dtsec_softc*) ;
 int * qman_fqr_create (int,int ,int ,int,int ,int,int,int,int,int ,int ,int ) ;
 int qman_fqr_get_base_fqid (int *) ;
 scalar_t__ qman_fqr_register_cb (int *,int ,struct dtsec_softc*) ;

int
dtsec_rm_fqr_tx_init(struct dtsec_softc *sc)
{
 t_Error error;
 t_Handle fqr;


 fqr = qman_fqr_create(1, sc->sc_port_tx_qman_chan,
     DTSEC_RM_FQR_TX_WQ, 0, 0, 0, 0, 1, 0, 0, 0, 0);
 if (fqr == ((void*)0)) {
  device_printf(sc->sc_dev, "could not create default TX queue"
      "\n");
  return (EIO);
 }

 sc->sc_tx_fqr = fqr;


 fqr = qman_fqr_create(1, DTSEC_RM_FQR_TX_CONF_CHANNEL,
     DTSEC_RM_FQR_TX_CONF_WQ, 0, 0, 0, 0, 1, 0, 0, 0,
     0);
 if (fqr == ((void*)0)) {
  device_printf(sc->sc_dev, "could not create TX confirmation "
      "queue\n");
  dtsec_rm_fqr_tx_free(sc);
  return (EIO);
 }

 sc->sc_tx_conf_fqr = fqr;
 sc->sc_tx_conf_fqid = qman_fqr_get_base_fqid(fqr);

 error = qman_fqr_register_cb(fqr, dtsec_rm_fqr_tx_confirm_callback, sc);
 if (error != E_OK) {
  device_printf(sc->sc_dev, "could not register TX confirmation "
      "callback\n");
  dtsec_rm_fqr_tx_free(sc);
  return (EIO);
 }

 return (0);
}
