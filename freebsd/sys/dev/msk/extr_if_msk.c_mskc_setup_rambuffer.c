
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msk_softc {int msk_ramsize; int msk_rxqsize; int msk_txqsize; int msk_num_port; int* msk_rxqstart; int* msk_rxqend; int* msk_txqstart; int* msk_txqend; int msk_dev; int msk_pflags; } ;


 int B2_E_0 ;
 int CSR_READ_1 (struct msk_softc*,int ) ;
 int MSK_FLAG_RAMBUF ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int,...) ;
 int rounddown (int,int) ;

__attribute__((used)) static int
mskc_setup_rambuffer(struct msk_softc *sc)
{
 int next;
 int i;


 sc->msk_ramsize = CSR_READ_1(sc, B2_E_0) * 4;
 if (bootverbose)
  device_printf(sc->msk_dev,
      "RAM buffer size : %dKB\n", sc->msk_ramsize);
 if (sc->msk_ramsize == 0)
  return (0);

 sc->msk_pflags |= MSK_FLAG_RAMBUF;





 sc->msk_rxqsize = rounddown((sc->msk_ramsize * 1024 * 2) / 3, 1024);
 sc->msk_txqsize = (sc->msk_ramsize * 1024) - sc->msk_rxqsize;
 for (i = 0, next = 0; i < sc->msk_num_port; i++) {
  sc->msk_rxqstart[i] = next;
  sc->msk_rxqend[i] = next + sc->msk_rxqsize - 1;
  next = sc->msk_rxqend[i] + 1;
  sc->msk_txqstart[i] = next;
  sc->msk_txqend[i] = next + sc->msk_txqsize - 1;
  next = sc->msk_txqend[i] + 1;
  if (bootverbose) {
   device_printf(sc->msk_dev,
       "Port %d : Rx Queue %dKB(0x%08x:0x%08x)\n", i,
       sc->msk_rxqsize / 1024, sc->msk_rxqstart[i],
       sc->msk_rxqend[i]);
   device_printf(sc->msk_dev,
       "Port %d : Tx Queue %dKB(0x%08x:0x%08x)\n", i,
       sc->msk_txqsize / 1024, sc->msk_txqstart[i],
       sc->msk_txqend[i]);
  }
 }

 return (0);
}
