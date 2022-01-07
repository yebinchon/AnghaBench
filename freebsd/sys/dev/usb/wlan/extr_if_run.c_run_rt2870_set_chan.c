
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct run_softc {int ntxchains; int nrxchains; int* txpow1; int* txpow2; int freq; } ;
struct rfprog {scalar_t__ chan; int r2; int r3; int r4; int r1; } ;
typedef int int8_t ;


 struct rfprog* rt2860_rf2850 ;
 int run_delay (struct run_softc*,int) ;
 int run_rt2870_rf_write (struct run_softc*,int) ;

__attribute__((used)) static void
run_rt2870_set_chan(struct run_softc *sc, u_int chan)
{
 const struct rfprog *rfprog = rt2860_rf2850;
 uint32_t r2, r3, r4;
 int8_t txpow1, txpow2;
 int i;


 for (i = 0; rfprog[i].chan != chan; i++);

 r2 = rfprog[i].r2;
 if (sc->ntxchains == 1)
  r2 |= 1 << 14;
 if (sc->nrxchains == 1)
  r2 |= 1 << 17 | 1 << 6;
 else if (sc->nrxchains == 2)
  r2 |= 1 << 6;


 txpow1 = sc->txpow1[i];
 txpow2 = sc->txpow2[i];


 r3 = rfprog[i].r3 & 0xffffc1ff;
 r4 = (rfprog[i].r4 & ~(0x001f87c0)) | (sc->freq << 15);
 if (chan > 14) {
  if (txpow1 >= 0) {
   txpow1 = (txpow1 > 0xf) ? (0xf) : (txpow1);
   r3 |= (txpow1 << 10) | (1 << 9);
  } else {
   txpow1 += 7;


   r3 |= (txpow1 << 10);
  }
  if (txpow2 >= 0) {
   txpow2 = (txpow2 > 0xf) ? (0xf) : (txpow2);
   r4 |= (txpow2 << 7) | (1 << 6);
  } else {
   txpow2 += 7;
   r4 |= (txpow2 << 7);
  }
 } else {

  r3 |= (txpow1 << 9);


  r4 |= (txpow2 << 6);
 }

 run_rt2870_rf_write(sc, rfprog[i].r1);
 run_rt2870_rf_write(sc, r2);
 run_rt2870_rf_write(sc, r3 & ~(1 << 2));
 run_rt2870_rf_write(sc, r4);

 run_delay(sc, 10);

 run_rt2870_rf_write(sc, rfprog[i].r1);
 run_rt2870_rf_write(sc, r2);
 run_rt2870_rf_write(sc, r3 | (1 << 2));
 run_rt2870_rf_write(sc, r4);

 run_delay(sc, 10);

 run_rt2870_rf_write(sc, rfprog[i].r1);
 run_rt2870_rf_write(sc, r2);
 run_rt2870_rf_write(sc, r3 & ~(1 << 2));
 run_rt2870_rf_write(sc, r4);
}
