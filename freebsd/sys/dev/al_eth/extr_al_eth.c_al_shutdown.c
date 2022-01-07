
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_adapter {int dummy; } ;
typedef int device_t ;


 int al_eth_down (struct al_eth_adapter*) ;
 struct al_eth_adapter* device_get_softc (int ) ;

__attribute__((used)) static int
al_shutdown(device_t dev)
{
 struct al_eth_adapter *adapter = device_get_softc(dev);

 al_eth_down(adapter);

 return (0);
}
