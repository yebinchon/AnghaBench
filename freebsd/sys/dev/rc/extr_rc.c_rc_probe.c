
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int isa_get_irq (int ) ;
 scalar_t__ isa_get_logicalid (int ) ;
 int isa_get_port (int ) ;
 int nitems (int*) ;
 int* rc_ports ;

__attribute__((used)) static int
rc_probe(device_t dev)
{
 u_int port;
 int i, found;




 if (isa_get_logicalid(dev) != 0)
  return (ENXIO);




 port = isa_get_port(dev);
 if (port == -1)
  return (ENXIO);
 found = 0;
 for (i = 0; i < nitems(rc_ports); i++)
  if (rc_ports[i] == port) {
   found = 1;
   break;
  }
 if (!found)
  return (ENXIO);




 if (isa_get_irq(dev) == -1)
  return (ENXIO);

 device_set_desc(dev, "SDL Riscom/8");
 return (0);
}
