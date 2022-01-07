
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct al_eth_adapter {TYPE_2__* mii; int dev; int hal_adapter; TYPE_1__* netdev; } ;
typedef int device_t ;
struct TYPE_4__ {int mii_media_status; int mii_media_active; } ;
struct TYPE_3__ {int if_flags; } ;


 int AL_1000BASE_T_SPEED ;
 int AL_100BASE_TX_SPEED ;
 int AL_10BASE_T_SPEED ;
 int IFF_UP ;
 scalar_t__ IFM_1000_T ;
 scalar_t__ IFM_100_TX ;
 scalar_t__ IFM_10_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_FDX ;
 scalar_t__ IFM_SUBTYPE (int) ;
 int al_eth_mac_link_config (int *,int ,int,int ,scalar_t__) ;
 struct al_eth_adapter* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
al_miibus_linkchg(device_t dev)
{
 struct al_eth_adapter *adapter = device_get_softc(dev);
 uint8_t duplex = 0;
 uint8_t speed = 0;

 if (adapter->mii == ((void*)0))
  return;

 if ((adapter->netdev->if_flags & IFF_UP) == 0)
  return;


 if ((adapter->mii->mii_media_status & (IFM_AVALID | IFM_ACTIVE)) !=
     (IFM_AVALID | IFM_ACTIVE)) {
  return;
 }

 if ((adapter->mii->mii_media_active & IFM_FDX) != 0)
  duplex = 1;

 speed = IFM_SUBTYPE(adapter->mii->mii_media_active);

 if (speed == IFM_10_T) {
  al_eth_mac_link_config(&adapter->hal_adapter, 0, 1,
      AL_10BASE_T_SPEED, duplex);
  return;
 }

 if (speed == IFM_100_TX) {
  al_eth_mac_link_config(&adapter->hal_adapter, 0, 1,
      AL_100BASE_TX_SPEED, duplex);
  return;
 }

 if (speed == IFM_1000_T) {
  al_eth_mac_link_config(&adapter->hal_adapter, 0, 1,
      AL_1000BASE_T_SPEED, duplex);
  return;
 }

 device_printf(adapter->dev, "ERROR: unknown MII media active 0x%08x\n",
     adapter->mii->mii_media_active);
}
