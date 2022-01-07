
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_int ;
struct run_softc {int* txpow1; int* txpow2; int bbp25; int bbp26; int ntxchains; int nrxchains; int freq; int rf24_20mhz; int txmixgain_2ghz; int txmixgain_5ghz; } ;
typedef int int8_t ;
struct TYPE_4__ {int chan; } ;
struct TYPE_3__ {int n; int k; int r; } ;


 int RT2860_GPIO_CTRL ;
 TYPE_2__* rt2860_rf2850 ;
 TYPE_1__* rt3070_freqs ;
 int run_bbp_write (struct run_softc*,int,int) ;
 int run_delay (struct run_softc*,int) ;
 int run_read (struct run_softc*,int ,int*) ;
 int run_rt3070_rf_read (struct run_softc*,int,int*) ;
 int run_rt3070_rf_write (struct run_softc*,int,int) ;
 int run_write (struct run_softc*,int ,int) ;

__attribute__((used)) static void
run_rt3572_set_chan(struct run_softc *sc, u_int chan)
{
 int8_t txpow1, txpow2;
 uint32_t tmp;
 uint8_t rf;
 int i;


 for (i = 0; rt2860_rf2850[i].chan != chan; i++);


 txpow1 = sc->txpow1[i];
 txpow2 = sc->txpow2[i];

 if (chan <= 14) {
  run_bbp_write(sc, 25, sc->bbp25);
  run_bbp_write(sc, 26, sc->bbp26);
 } else {

  run_bbp_write(sc, 25, 0x09);
  run_bbp_write(sc, 26, 0xff);
 }

 run_rt3070_rf_write(sc, 2, rt3070_freqs[i].n);
 run_rt3070_rf_write(sc, 3, rt3070_freqs[i].k);
 run_rt3070_rf_read(sc, 6, &rf);
 rf = (rf & ~0x0f) | rt3070_freqs[i].r;
 rf |= (chan <= 14) ? 0x08 : 0x04;
 run_rt3070_rf_write(sc, 6, rf);


 run_rt3070_rf_read(sc, 5, &rf);
 rf &= ~(0x08 | 0x04);
 rf |= (chan <= 14) ? 0x04 : 0x08;
 run_rt3070_rf_write(sc, 5, rf);


 if (chan <= 14)
  rf = 0x60 | txpow1;
 else
  rf = 0xe0 | (txpow1 & 0xc) << 1 | (txpow1 & 0x3);
 run_rt3070_rf_write(sc, 12, rf);


 if (chan <= 14)
  rf = 0x60 | txpow2;
 else
  rf = 0xe0 | (txpow2 & 0xc) << 1 | (txpow2 & 0x3);
 run_rt3070_rf_write(sc, 13, rf);


 run_rt3070_rf_read(sc, 1, &rf);
 rf &= ~0xfc;
 if (sc->ntxchains == 1)
  rf |= 1 << 7 | 1 << 5;
 else if (sc->ntxchains == 2)
  rf |= 1 << 7;
 if (sc->nrxchains == 1)
  rf |= 1 << 6 | 1 << 4;
 else if (sc->nrxchains == 2)
  rf |= 1 << 6;
 run_rt3070_rf_write(sc, 1, rf);


 run_rt3070_rf_read(sc, 23, &rf);
 rf = (rf & ~0x7f) | sc->freq;
 run_rt3070_rf_write(sc, 23, rf);


 rf = sc->rf24_20mhz;
 run_rt3070_rf_write(sc, 24, rf);
 run_rt3070_rf_write(sc, 31, rf);


 run_rt3070_rf_read(sc, 7, &rf);
 rf = (chan <= 14) ? 0xd8 : ((rf & ~0xc8) | 0x14);
 run_rt3070_rf_write(sc, 7, rf);


 rf = (chan <= 14) ? 0xc3 : 0xc0;
 run_rt3070_rf_write(sc, 9, rf);


 run_rt3070_rf_write(sc, 10, 0xf1);

 run_rt3070_rf_write(sc, 11, (chan <= 14) ? 0xb9 : 0x00);


 run_rt3070_rf_write(sc, 15, (chan <= 14) ? 0x53 : 0x43);

 if (chan <= 14)
  rf = 0x48 | sc->txmixgain_2ghz;
 else
  rf = 0x78 | sc->txmixgain_5ghz;
 run_rt3070_rf_write(sc, 16, rf);


 run_rt3070_rf_write(sc, 17, 0x23);

 if (chan <= 14)
  rf = 0x93;
 else if (chan <= 64)
  rf = 0xb7;
 else if (chan <= 128)
  rf = 0x74;
 else
  rf = 0x72;
 run_rt3070_rf_write(sc, 19, rf);


 if (chan <= 14)
  rf = 0xb3;
 else if (chan <= 64)
  rf = 0xf6;
 else if (chan <= 128)
  rf = 0xf4;
 else
  rf = 0xf3;
 run_rt3070_rf_write(sc, 20, rf);


 if (chan <= 14)
  rf = 0x15;
 else if (chan <= 64)
  rf = 0x3d;
 else
  rf = 0x01;
 run_rt3070_rf_write(sc, 25, rf);


 run_rt3070_rf_write(sc, 26, (chan <= 14) ? 0x85 : 0x87);

 run_rt3070_rf_write(sc, 27, (chan <= 14) ? 0x00 : 0x01);

 run_rt3070_rf_write(sc, 29, (chan <= 14) ? 0x9b : 0x9f);

 run_read(sc, RT2860_GPIO_CTRL, &tmp);
 tmp &= ~0x8080;
 if (chan <= 14)
  tmp |= 0x80;
 run_write(sc, RT2860_GPIO_CTRL, tmp);


 run_rt3070_rf_read(sc, 7, &rf);
 run_rt3070_rf_write(sc, 7, rf | 0x01);

 run_delay(sc, 2);
}
