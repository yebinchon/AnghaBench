
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pio_softc {int dummy; } ;
typedef int device_t ;


 int PIO_DATA ;
 int READ4 (struct pio_softc*,int ) ;
 struct pio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
pio_read(device_t dev)
{
 struct pio_softc *sc;

 sc = device_get_softc(dev);

 return (READ4(sc, PIO_DATA));
}
