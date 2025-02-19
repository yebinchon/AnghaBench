
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {scalar_t__ param; int id; } ;
struct TYPE_4__ {int desc_type; TYPE_1__ hip; } ;
struct usie_softc {int sc_mtx; int * sc_if_xfer; int ** sc_uc_xfer; TYPE_2__ sc_txd; struct ifnet* sc_ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int DPRINTF (char*) ;
 int IFF_DRV_RUNNING ;
 int USIE_CNS_ID_INIT ;
 int USIE_CNS_OB_LINK_UPDATE ;
 int USIE_HIP_CTX ;
 size_t USIE_HIP_IF ;
 size_t USIE_IF_N_XFER ;
 size_t USIE_IF_RX ;
 size_t USIE_IF_STATUS ;
 int USIE_IP_TX ;
 size_t USIE_UC_RX ;
 int htobe16 (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usbd_transfer_start (int ) ;
 int usbd_xfer_set_stall (int ) ;
 int usie_cns_req (struct usie_softc*,int ,int ) ;

__attribute__((used)) static void
usie_if_init(void *arg)
{
 struct usie_softc *sc = arg;
 struct ifnet *ifp = sc->sc_ifp;
 uint8_t i;

 mtx_lock(&sc->sc_mtx);


 sc->sc_txd.hip.id = USIE_HIP_CTX;
 sc->sc_txd.hip.param = 0;
 sc->sc_txd.desc_type = htobe16(USIE_IP_TX);

 for (i = 0; i != USIE_IF_N_XFER; i++)
  usbd_xfer_set_stall(sc->sc_if_xfer[i]);

 usbd_transfer_start(sc->sc_uc_xfer[USIE_HIP_IF][USIE_UC_RX]);
 usbd_transfer_start(sc->sc_if_xfer[USIE_IF_STATUS]);
 usbd_transfer_start(sc->sc_if_xfer[USIE_IF_RX]);


 if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
  usie_cns_req(sc, USIE_CNS_ID_INIT, USIE_CNS_OB_LINK_UPDATE);

 mtx_unlock(&sc->sc_mtx);

 DPRINTF("ifnet initialized\n");
}
