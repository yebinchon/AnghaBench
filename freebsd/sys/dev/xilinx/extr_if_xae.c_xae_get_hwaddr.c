
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct xae_softc {int dev; } ;
typedef int phandle_t ;


 int EINVAL ;
 int ETHER_ADDR_LEN ;
 int OF_getprop (int ,char*,int *,int) ;
 int OF_getproplen (int ,char*) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
xae_get_hwaddr(struct xae_softc *sc, uint8_t *hwaddr)
{
 phandle_t node;
 int len;

 node = ofw_bus_get_node(sc->dev);


 if ((len = OF_getproplen(node, "local-mac-address")) <= 0)
  return (EINVAL);

 if (len != ETHER_ADDR_LEN)
  return (EINVAL);

 OF_getprop(node, "local-mac-address", hwaddr,
     ETHER_ADDR_LEN);

 return (0);
}
