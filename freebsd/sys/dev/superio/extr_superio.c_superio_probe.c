
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siosc {int dummy; } ;
typedef int device_t ;


 int BUS_PROBE_SPECIFIC ;
 int ENXIO ;
 struct siosc* device_get_softc (int ) ;
 scalar_t__ isa_get_logicalid (int ) ;
 int superio_detect (int ,int,struct siosc*) ;

__attribute__((used)) static int
superio_probe(device_t dev)
{
 struct siosc *sc;
 int error;


 if (isa_get_logicalid(dev) != 0)
  return (ENXIO);





 sc = device_get_softc(dev);
 error = superio_detect(dev, 1, sc);
 if (error != 0)
  return (error);
 return (BUS_PROBE_SPECIFIC);
}
