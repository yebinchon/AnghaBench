
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int * dev; } ;
struct adapter {struct port_info** port; } ;
typedef int * device_t ;


 int EINVAL ;
 int ENXIO ;
 int MAX_NPORTS ;
 struct adapter* device_get_softc (int *) ;

__attribute__((used)) static int
t4_read_port_device(device_t dev, int port, device_t *child)
{
 struct adapter *sc;
 struct port_info *pi;

 sc = device_get_softc(dev);
 if (port < 0 || port >= MAX_NPORTS)
  return (EINVAL);
 pi = sc->port[port];
 if (pi == ((void*)0) || pi->dev == ((void*)0))
  return (ENXIO);
 *child = pi->dev;
 return (0);
}
