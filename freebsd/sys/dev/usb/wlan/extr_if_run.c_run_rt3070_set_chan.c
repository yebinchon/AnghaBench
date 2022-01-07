
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ u_int ;
struct run_softc {int* txpow1; int* txpow2; int ntxchains; int nrxchains; int freq; int rf24_20mhz; } ;
typedef int int8_t ;
struct TYPE_4__ {scalar_t__ chan; } ;
struct TYPE_3__ {int n; int k; int r; } ;


 TYPE_2__* rt2860_rf2850 ;
 TYPE_1__* rt3070_freqs ;
 int run_rt3070_rf_read (struct run_softc*,int,int*) ;
 int run_rt3070_rf_write (struct run_softc*,int,int) ;

__attribute__((used)) static void
run_rt3070_set_chan(struct run_softc *sc, u_int chan)
{
 int8_t txpow1, txpow2;
 uint8_t rf;
 int i;


 for (i = 0; rt2860_rf2850[i].chan != chan; i++);


 txpow1 = sc->txpow1[i];
 txpow2 = sc->txpow2[i];

 run_rt3070_rf_write(sc, 2, rt3070_freqs[i].n);


 run_rt3070_rf_read(sc, 3, &rf);
 rf = (rf & ~0x0f) | rt3070_freqs[i].k;
 run_rt3070_rf_write(sc, 3, rf);

 run_rt3070_rf_read(sc, 6, &rf);
 rf = (rf & ~0x03) | rt3070_freqs[i].r;
 run_rt3070_rf_write(sc, 6, rf);


 run_rt3070_rf_read(sc, 12, &rf);
 rf = (rf & ~0x1f) | txpow1;
 run_rt3070_rf_write(sc, 12, rf);


 run_rt3070_rf_read(sc, 13, &rf);
 rf = (rf & ~0x1f) | txpow2;
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


 run_rt3070_rf_read(sc, 24, &rf);
 rf = (rf & ~0x3f) | sc->rf24_20mhz;
 run_rt3070_rf_write(sc, 24, rf);
 run_rt3070_rf_read(sc, 31, &rf);
 rf = (rf & ~0x3f) | sc->rf24_20mhz;
 run_rt3070_rf_write(sc, 31, rf);


 run_rt3070_rf_read(sc, 7, &rf);
 run_rt3070_rf_write(sc, 7, rf | 0x01);
}
