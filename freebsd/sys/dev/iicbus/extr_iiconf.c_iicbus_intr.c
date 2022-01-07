
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbus_softc {scalar_t__ owner; } ;
typedef int device_t ;


 int IICBUS_INTR (scalar_t__,int,char*) ;
 scalar_t__ device_get_softc (int ) ;

void
iicbus_intr(device_t bus, int event, char *buf)
{
 struct iicbus_softc *sc = (struct iicbus_softc *)device_get_softc(bus);


 if (sc->owner)
  IICBUS_INTR(sc->owner, event, buf);

 return;
}
