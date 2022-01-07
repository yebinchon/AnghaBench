
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz8995ma_softc {int numports; } ;
typedef int device_t ;


 scalar_t__ KSZ8995MA_PC1_BASE ;
 int KSZ8995MA_PORT_SIZE ;
 struct ksz8995ma_softc* device_get_softc (int ) ;
 int ksz8995ma_readreg (int ,scalar_t__) ;
 int ksz8995ma_writereg (int ,scalar_t__,int) ;

__attribute__((used)) static void
ksz8995ma_portvlanreset(device_t dev)
{
 int i, data;
 struct ksz8995ma_softc *sc;

 sc = device_get_softc(dev);

 for (i = 0; i < sc->numports; ++i) {
  data = ksz8995ma_readreg(dev, KSZ8995MA_PC1_BASE +
      KSZ8995MA_PORT_SIZE * i);
  ksz8995ma_writereg(dev, KSZ8995MA_PC1_BASE +
      KSZ8995MA_PORT_SIZE * i, (data & 0xe0) | 0x1f);
 }
}
