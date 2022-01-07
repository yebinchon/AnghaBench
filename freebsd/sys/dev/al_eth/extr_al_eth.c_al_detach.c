
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_adapter {int udma_res; int mac_res; int ec_res; int irq_res; int wd_mtx; int stats_mtx; int netdev; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int al_eth_down (struct al_eth_adapter*) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 struct al_eth_adapter* device_get_softc (int ) ;
 int ether_ifdetach (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
al_detach(device_t dev)
{
 struct al_eth_adapter *adapter;

 adapter = device_get_softc(dev);
 ether_ifdetach(adapter->netdev);

 mtx_destroy(&adapter->stats_mtx);
 mtx_destroy(&adapter->wd_mtx);

 al_eth_down(adapter);

 bus_release_resource(dev, SYS_RES_IRQ, 0, adapter->irq_res);
 bus_release_resource(dev, SYS_RES_MEMORY, 0, adapter->ec_res);
 bus_release_resource(dev, SYS_RES_MEMORY, 0, adapter->mac_res);
 bus_release_resource(dev, SYS_RES_MEMORY, 0, adapter->udma_res);

 return (0);
}
