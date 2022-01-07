
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef struct dtsec_softc* t_Handle ;
typedef int t_DpaaSGTE ;
typedef int t_DpaaFD ;
struct dtsec_softc {scalar_t__ sc_tx_fqr_full; int sc_tx_conf_fqr; int sc_dev; } ;
struct dtsec_rm_frame_info {int fi_mbuf; } ;
typedef int e_RxStoreResponse ;


 int * DPAA_FD_GET_ADDR (int *) ;
 scalar_t__ DPAA_FD_GET_STATUS (int *) ;
 struct dtsec_rm_frame_info* DPAA_SGTE_GET_ADDR (int *) ;
 int DTSEC_LOCK (struct dtsec_softc*) ;
 int DTSEC_UNLOCK (struct dtsec_softc*) ;
 int device_printf (int ,char*,scalar_t__) ;
 int dtsec_rm_fi_free (struct dtsec_softc*,struct dtsec_rm_frame_info*) ;
 int dtsec_rm_if_start_locked (struct dtsec_softc*) ;
 int e_QM_FQR_COUNTERS_FRAME ;
 int e_RX_STORE_RESPONSE_CONTINUE ;
 int m_freem (int ) ;
 unsigned int qman_fqr_get_counter (int ,int ,int ) ;

__attribute__((used)) static e_RxStoreResponse
dtsec_rm_fqr_tx_confirm_callback(t_Handle app, t_Handle fqr, t_Handle portal,
    uint32_t fqid_off, t_DpaaFD *frame)
{
 struct dtsec_rm_frame_info *fi;
 struct dtsec_softc *sc;
 unsigned int qlen;
 t_DpaaSGTE *sgt0;

 sc = app;

 if (DPAA_FD_GET_STATUS(frame) != 0)
  device_printf(sc->sc_dev, "TX error: 0x%08X\n",
      DPAA_FD_GET_STATUS(frame));





 sgt0 = DPAA_FD_GET_ADDR(frame);
 fi = DPAA_SGTE_GET_ADDR(sgt0);


 m_freem(fi->fi_mbuf);
 dtsec_rm_fi_free(sc, fi);

 qlen = qman_fqr_get_counter(sc->sc_tx_conf_fqr, 0,
     e_QM_FQR_COUNTERS_FRAME);

 if (qlen == 0) {
  DTSEC_LOCK(sc);

  if (sc->sc_tx_fqr_full) {
   sc->sc_tx_fqr_full = 0;
   dtsec_rm_if_start_locked(sc);
  }

  DTSEC_UNLOCK(sc);
 }

 return (e_RX_STORE_RESPONSE_CONTINUE);
}
