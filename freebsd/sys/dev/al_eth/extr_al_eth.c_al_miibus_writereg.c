
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_adapter {int dev; int phy_addr; int hal_adapter; } ;
typedef int device_t ;


 scalar_t__ MDIO_PAUSE_MSEC ;
 int MDIO_TIMEOUT_MSEC ;
 int al_eth_mdio_write (int *,int ,int,int,int) ;
 struct al_eth_adapter* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int pause (char*,scalar_t__) ;

__attribute__((used)) static int
al_miibus_writereg(device_t dev, int phy, int reg, int value)
{
 struct al_eth_adapter *adapter = device_get_softc(dev);
 int rc;
 int timeout = MDIO_TIMEOUT_MSEC;

 while (timeout > 0) {
  rc = al_eth_mdio_write(&adapter->hal_adapter, adapter->phy_addr,
      -1, reg, value);

  if (rc == 0)
   return (0);

  device_printf(adapter->dev,
      "mdio write failed. try again in 10 msec\n");

  timeout -= MDIO_PAUSE_MSEC;
  pause("miibus writereg", MDIO_PAUSE_MSEC);
 }

 if (rc != 0)
  device_printf(adapter->dev, "MDIO write failed on timeout\n");

 return (rc);
}
