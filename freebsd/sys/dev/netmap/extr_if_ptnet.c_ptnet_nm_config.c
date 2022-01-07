
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptnet_softc {int dev; int iomem; } ;
struct nm_config_info {int rx_buf_maxsize; void* num_rx_descs; void* num_tx_descs; void* num_rx_rings; void* num_tx_rings; } ;
struct netmap_adapter {int ifp; } ;


 int NETMAP_BUF_SIZE (struct netmap_adapter*) ;
 int PTNET_IO_NUM_RX_RINGS ;
 int PTNET_IO_NUM_RX_SLOTS ;
 int PTNET_IO_NUM_TX_RINGS ;
 int PTNET_IO_NUM_TX_SLOTS ;
 void* bus_read_4 (int ,int ) ;
 int device_printf (int ,char*,void*,void*,void*,void*,int ) ;
 struct ptnet_softc* if_getsoftc (int ) ;

__attribute__((used)) static int
ptnet_nm_config(struct netmap_adapter *na, struct nm_config_info *info)
{
 struct ptnet_softc *sc = if_getsoftc(na->ifp);

 info->num_tx_rings = bus_read_4(sc->iomem, PTNET_IO_NUM_TX_RINGS);
 info->num_rx_rings = bus_read_4(sc->iomem, PTNET_IO_NUM_RX_RINGS);
 info->num_tx_descs = bus_read_4(sc->iomem, PTNET_IO_NUM_TX_SLOTS);
 info->num_rx_descs = bus_read_4(sc->iomem, PTNET_IO_NUM_RX_SLOTS);
 info->rx_buf_maxsize = NETMAP_BUF_SIZE(na);

 device_printf(sc->dev, "txr %u, rxr %u, txd %u, rxd %u, rxbufsz %u\n",
   info->num_tx_rings, info->num_rx_rings,
   info->num_tx_descs, info->num_rx_descs,
   info->rx_buf_maxsize);

 return 0;
}
