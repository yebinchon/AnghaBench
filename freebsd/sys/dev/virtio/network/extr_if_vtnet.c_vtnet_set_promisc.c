
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int dummy; } ;


 int VIRTIO_NET_CTRL_RX_PROMISC ;
 int vtnet_ctrl_rx_cmd (struct vtnet_softc*,int ,int) ;

__attribute__((used)) static int
vtnet_set_promisc(struct vtnet_softc *sc, int on)
{

 return (vtnet_ctrl_rx_cmd(sc, VIRTIO_NET_CTRL_RX_PROMISC, on));
}
