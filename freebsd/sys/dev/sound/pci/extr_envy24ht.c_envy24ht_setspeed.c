
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct sc_info {int dev; TYPE_1__* cfg; } ;
struct TYPE_4__ {scalar_t__ speed; scalar_t__ code; } ;
struct TYPE_3__ {int scfg; } ;


 int ENVY24HT_CCSM_SCFG_XIN2 ;
 int ENVY24HT_MT_I2S ;
 scalar_t__ ENVY24HT_MT_I2S_MLR128 ;
 int ENVY24HT_MT_RATE ;
 scalar_t__ ENVY24HT_MT_RATE_176400 ;
 scalar_t__ ENVY24HT_MT_RATE_192000 ;
 scalar_t__ ENVY24HT_MT_RATE_MASK ;
 scalar_t__ ENVY24HT_MT_RATE_SPDIF ;
 int device_printf (int ,char*,scalar_t__,...) ;
 scalar_t__ envy24ht_rdmt (struct sc_info*,int ,int) ;
 int envy24ht_slavecd (struct sc_info*) ;
 TYPE_2__* envy24ht_speedtab ;
 int envy24ht_wrmt (struct sc_info*,int ,scalar_t__,int) ;

__attribute__((used)) static u_int32_t
envy24ht_setspeed(struct sc_info *sc, u_int32_t speed) {
 u_int32_t code, i2sfmt;
 int i = 0;
  for (i = 0; envy24ht_speedtab[i].speed != 0; i++) {
   if (envy24ht_speedtab[i].speed == speed)
    break;
  }
  code = envy24ht_speedtab[i].code;




 if (code < 0x10) {
  envy24ht_wrmt(sc, ENVY24HT_MT_RATE, code, 1);
  if ((((sc->cfg->scfg & ENVY24HT_CCSM_SCFG_XIN2) == 0x00) && (code == ENVY24HT_MT_RATE_192000)) || (code == ENVY24HT_MT_RATE_176400)) {

   i2sfmt = envy24ht_rdmt(sc, ENVY24HT_MT_I2S, 1);
   i2sfmt |= ENVY24HT_MT_I2S_MLR128;
   envy24ht_wrmt(sc, ENVY24HT_MT_I2S, i2sfmt, 1);
  }
  else {
   i2sfmt = envy24ht_rdmt(sc, ENVY24HT_MT_I2S, 1);
   i2sfmt &= ~ENVY24HT_MT_I2S_MLR128;
   envy24ht_wrmt(sc, ENVY24HT_MT_I2S, i2sfmt, 1);
  }
  code = envy24ht_rdmt(sc, ENVY24HT_MT_RATE, 1);
  code &= ENVY24HT_MT_RATE_MASK;
  for (i = 0; envy24ht_speedtab[i].code < 0x10; i++) {
   if (envy24ht_speedtab[i].code == code)
    break;
  }
  speed = envy24ht_speedtab[i].speed;
 }
 else
  speed = 0;




 return speed;
}
