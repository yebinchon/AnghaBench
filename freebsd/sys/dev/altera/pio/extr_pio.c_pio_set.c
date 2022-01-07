
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pio_softc {int dummy; } ;
typedef int device_t ;


 int PIO_OUTCLR ;
 int PIO_OUTSET ;
 int WRITE4 (struct pio_softc*,int ,int) ;
 struct pio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
pio_set(device_t dev, int bit, int enable)
{
 struct pio_softc *sc;

 sc = device_get_softc(dev);

 if (enable)
  WRITE4(sc, PIO_OUTSET, bit);
 else
  WRITE4(sc, PIO_OUTCLR, bit);

 return (0);
}
