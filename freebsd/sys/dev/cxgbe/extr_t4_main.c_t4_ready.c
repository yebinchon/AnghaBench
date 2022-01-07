
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int flags; } ;
typedef int device_t ;


 int ENXIO ;
 int FW_OK ;
 struct adapter* device_get_softc (int ) ;

__attribute__((used)) static int
t4_ready(device_t dev)
{
 struct adapter *sc;

 sc = device_get_softc(dev);
 if (sc->flags & FW_OK)
  return (0);
 return (ENXIO);
}
