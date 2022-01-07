
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int ;
struct rt2860_softc {int* txpow1; int* txpow2; int ntxchains; int nrxchains; int freq; int rf24_20mhz; } ;
typedef int int8_t ;
struct TYPE_4__ {int chan; } ;
struct TYPE_3__ {int n; int k; int r; } ;


 int KASSERT (int,char*) ;
 int RT3070_RX1_PD ;
 int RT3070_RX2_PD ;
 int RT3070_TUNE ;
 int RT3070_TX1_PD ;
 int RT3070_TX2_PD ;
 TYPE_2__* rt2860_rf2850 ;
 TYPE_1__* rt3090_freqs ;
 int rt3090_rf_read (struct rt2860_softc*,int) ;
 int rt3090_rf_write (struct rt2860_softc*,int,int) ;

__attribute__((used)) static void
rt3090_set_chan(struct rt2860_softc *sc, u_int chan)
{
 int8_t txpow1, txpow2;
 uint8_t rf;
 int i;


 KASSERT(chan >= 1 && chan <= 14, ("chan %d not support", chan));


 for (i = 0; rt2860_rf2850[i].chan != chan; i++);


 txpow1 = sc->txpow1[i];
 txpow2 = sc->txpow2[i];

 rt3090_rf_write(sc, 2, rt3090_freqs[i].n);
 rf = rt3090_rf_read(sc, 3);
 rf = (rf & ~0x0f) | rt3090_freqs[i].k;
 rt3090_rf_write(sc, 3, rf);
 rf = rt3090_rf_read(sc, 6);
 rf = (rf & ~0x03) | rt3090_freqs[i].r;
 rt3090_rf_write(sc, 6, rf);


 rf = rt3090_rf_read(sc, 12);
 rf = (rf & ~0x1f) | txpow1;
 rt3090_rf_write(sc, 12, rf);


 rf = rt3090_rf_read(sc, 13);
 rf = (rf & ~0x1f) | txpow2;
 rt3090_rf_write(sc, 13, rf);

 rf = rt3090_rf_read(sc, 1);
 rf &= ~0xfc;
 if (sc->ntxchains == 1)
  rf |= RT3070_TX1_PD | RT3070_TX2_PD;
 else if (sc->ntxchains == 2)
  rf |= RT3070_TX2_PD;
 if (sc->nrxchains == 1)
  rf |= RT3070_RX1_PD | RT3070_RX2_PD;
 else if (sc->nrxchains == 2)
  rf |= RT3070_RX2_PD;
 rt3090_rf_write(sc, 1, rf);


 rf = rt3090_rf_read(sc, 23);
 rf = (rf & ~0x7f) | sc->freq;
 rt3090_rf_write(sc, 23, rf);


 rf = rt3090_rf_read(sc, 24);
 rf = (rf & ~0x3f) | sc->rf24_20mhz;
 rt3090_rf_write(sc, 24, rf);
 rf = rt3090_rf_read(sc, 31);
 rf = (rf & ~0x3f) | sc->rf24_20mhz;
 rt3090_rf_write(sc, 31, rf);


 rf = rt3090_rf_read(sc, 7);
 rt3090_rf_write(sc, 7, rf | RT3070_TUNE);
}
