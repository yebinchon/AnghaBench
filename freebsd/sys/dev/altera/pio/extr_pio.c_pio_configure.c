
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pio_softc {int dummy; } ;
typedef int device_t ;


 int PIO_DIR ;
 int PIO_INT_MASK ;
 int WRITE4 (struct pio_softc*,int ,int) ;
 struct pio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
pio_configure(device_t dev, int dir, int mask)
{
 struct pio_softc *sc;

 sc = device_get_softc(dev);

 WRITE4(sc, PIO_INT_MASK, mask);
 WRITE4(sc, PIO_DIR, dir);

 return (0);
}
