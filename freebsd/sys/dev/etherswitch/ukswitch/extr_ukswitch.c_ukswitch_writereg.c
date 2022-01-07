
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ukswitch_softc {int dummy; } ;
typedef int device_t ;


 int MA_OWNED ;
 int UKSWITCH_LOCK_ASSERT (struct ukswitch_softc*,int ) ;
 struct ukswitch_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ukswitch_writereg(device_t dev, int addr, int value)
{
 struct ukswitch_softc *sc;

 sc = device_get_softc(dev);
 UKSWITCH_LOCK_ASSERT(sc, MA_OWNED);


 return (0);
}
