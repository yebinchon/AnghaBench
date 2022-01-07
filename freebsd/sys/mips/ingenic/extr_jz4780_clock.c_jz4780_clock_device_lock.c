
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_clock_softc {int dummy; } ;
typedef int device_t ;


 int CGU_LOCK (struct jz4780_clock_softc*) ;
 struct jz4780_clock_softc* device_get_softc (int ) ;

__attribute__((used)) static void
jz4780_clock_device_lock(device_t dev)
{
 struct jz4780_clock_softc *sc;

 sc = device_get_softc(dev);
 CGU_LOCK(sc);
}
