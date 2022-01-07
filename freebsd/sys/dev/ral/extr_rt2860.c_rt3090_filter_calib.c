
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rt2860_softc {int dummy; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int RT3070_BB_LOOPBACK ;
 int rt2860_mcu_bbp_read (struct rt2860_softc*,int) ;
 int rt2860_mcu_bbp_write (struct rt2860_softc*,int,int) ;
 int rt3090_rf_read (struct rt2860_softc*,int) ;
 int rt3090_rf_write (struct rt2860_softc*,int,int) ;

__attribute__((used)) static int
rt3090_filter_calib(struct rt2860_softc *sc, uint8_t init, uint8_t target,
    uint8_t *val)
{
 uint8_t rf22, rf24;
 uint8_t bbp55_pb, bbp55_sb, delta;
 int ntries;


 rf24 = rt3090_rf_read(sc, 24);
 rf24 = (rf24 & 0xc0) | init;
 rt3090_rf_write(sc, 24, rf24);


 rf22 = rt3090_rf_read(sc, 22);
 rt3090_rf_write(sc, 22, rf22 | RT3070_BB_LOOPBACK);


 rt2860_mcu_bbp_write(sc, 24, 0x00);
 for (ntries = 0; ntries < 100; ntries++) {

  rt2860_mcu_bbp_write(sc, 25, 0x90);
  DELAY(1000);

  bbp55_pb = rt2860_mcu_bbp_read(sc, 55);
  if (bbp55_pb != 0)
   break;
 }
 if (ntries == 100)
  return (ETIMEDOUT);


 rt2860_mcu_bbp_write(sc, 24, 0x06);
 for (ntries = 0; ntries < 100; ntries++) {

  rt2860_mcu_bbp_write(sc, 25, 0x90);
  DELAY(1000);

  bbp55_sb = rt2860_mcu_bbp_read(sc, 55);

  delta = bbp55_pb - bbp55_sb;
  if (delta > target)
   break;


  rf24++;
  rt3090_rf_write(sc, 24, rf24);
 }
 if (ntries < 100) {
  if (rf24 != init)
   rf24--;
  *val = rf24;
  rt3090_rf_write(sc, 24, rf24);
 }


 rt2860_mcu_bbp_write(sc, 24, 0x00);


 rf22 = rt3090_rf_read(sc, 22);
 rt3090_rf_write(sc, 22, rf22 & ~RT3070_BB_LOOPBACK);

 return (0);
}
