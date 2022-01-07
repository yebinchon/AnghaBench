
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct run_softc {int dummy; } ;


 int ETIMEDOUT ;
 int run_bbp_read (struct run_softc*,int,int*) ;
 int run_bbp_write (struct run_softc*,int,int) ;
 int run_delay (struct run_softc*,int) ;
 int run_rt3070_rf_read (struct run_softc*,int,int*) ;
 int run_rt3070_rf_write (struct run_softc*,int,int) ;

__attribute__((used)) static int
run_rt3070_filter_calib(struct run_softc *sc, uint8_t init, uint8_t target,
    uint8_t *val)
{
 uint8_t rf22, rf24;
 uint8_t bbp55_pb, bbp55_sb, delta;
 int ntries;


 run_rt3070_rf_read(sc, 24, &rf24);
 rf24 = (rf24 & 0xc0) | init;
 run_rt3070_rf_write(sc, 24, rf24);


 run_rt3070_rf_read(sc, 22, &rf22);
 run_rt3070_rf_write(sc, 22, rf22 | 0x01);


 run_bbp_write(sc, 24, 0x00);
 for (ntries = 0; ntries < 100; ntries++) {

  run_bbp_write(sc, 25, 0x90);
  run_delay(sc, 10);

  run_bbp_read(sc, 55, &bbp55_pb);
  if (bbp55_pb != 0)
   break;
 }
 if (ntries == 100)
  return (ETIMEDOUT);


 run_bbp_write(sc, 24, 0x06);
 for (ntries = 0; ntries < 100; ntries++) {

  run_bbp_write(sc, 25, 0x90);
  run_delay(sc, 10);

  run_bbp_read(sc, 55, &bbp55_sb);

  delta = bbp55_pb - bbp55_sb;
  if (delta > target)
   break;


  rf24++;
  run_rt3070_rf_write(sc, 24, rf24);
 }
 if (ntries < 100) {
  if (rf24 != init)
   rf24--;
  *val = rf24;
  run_rt3070_rf_write(sc, 24, rf24);
 }


 run_bbp_write(sc, 24, 0x00);


 run_rt3070_rf_read(sc, 22, &rf22);
 run_rt3070_rf_write(sc, 22, rf22 & ~0x01);

 return (0);
}
