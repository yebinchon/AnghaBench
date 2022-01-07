
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct llan_softc {int rx_valid_val; int rx_buf_len; int rx_buf_phys; int io_lock; TYPE_1__* ifp; int unit; int * rx_xfer; int filter_buf_phys; int input_buf_phys; int mac_address; scalar_t__ rx_dma_slot; } ;
struct TYPE_2__ {int if_drv_flags; } ;


 int H_FREE_LOGICAL_LAN ;
 int H_REGISTER_LOGICAL_LAN ;
 int H_VIO_SIGNAL ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int LLAN_BUFDESC_VALID ;
 int LLAN_MAX_RX_PACKETS ;
 int llan_add_rxbuf (struct llan_softc*,int *) ;
 int llan_intr (struct llan_softc*) ;
 int memcpy (int*,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int phyp_hcall (int ,int ,...) ;

__attribute__((used)) static void
llan_init(void *xsc)
{
 struct llan_softc *sc = xsc;
 uint64_t rx_buf_desc;
 uint64_t macaddr;
 int err, i;

 mtx_lock(&sc->io_lock);

 phyp_hcall(H_FREE_LOGICAL_LAN, sc->unit);


 sc->rx_dma_slot = 0;
 sc->rx_valid_val = 1;

 rx_buf_desc = LLAN_BUFDESC_VALID;
 rx_buf_desc |= (sc->rx_buf_len << 32);
 rx_buf_desc |= sc->rx_buf_phys;
 memcpy(&macaddr, sc->mac_address, 8);
 err = phyp_hcall(H_REGISTER_LOGICAL_LAN, sc->unit, sc->input_buf_phys,
     rx_buf_desc, sc->filter_buf_phys, macaddr);

 for (i = 0; i < LLAN_MAX_RX_PACKETS; i++)
  llan_add_rxbuf(sc, &sc->rx_xfer[i]);

 phyp_hcall(H_VIO_SIGNAL, sc->unit, 1);


 sc->ifp->if_drv_flags |= IFF_DRV_RUNNING;
 sc->ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 mtx_unlock(&sc->io_lock);


 llan_intr(sc);
}
