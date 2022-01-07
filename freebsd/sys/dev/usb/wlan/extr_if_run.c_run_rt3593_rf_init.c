
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef size_t u_int ;
struct run_softc {int rf24_20mhz; int rf24_40mhz; int bbp26; int bbp25; } ;
struct TYPE_3__ {int reg; int val; } ;


 int RT3070_GPIO_SWITCH ;
 int RT3070_LDO_CFG0 ;
 int RT3070_OPT_14 ;
 int RT3593_AUTOTUNE_BYPASS ;
 int RT5390_RESCAL ;
 size_t nitems (TYPE_1__*) ;
 TYPE_1__* rt3593_def_rf ;
 int run_adjust_freq_offset (struct run_softc*) ;
 int run_bbp_read (struct run_softc*,int,int *) ;
 int run_delay (struct run_softc*,int) ;
 int run_read (struct run_softc*,int ,int*) ;
 int run_rt3070_rf_read (struct run_softc*,int,int*) ;
 int run_rt3070_rf_write (struct run_softc*,int,int) ;
 int run_write (struct run_softc*,int ,int) ;

__attribute__((used)) static void
run_rt3593_rf_init(struct run_softc *sc)
{
 uint32_t tmp;
 uint8_t rf;
 u_int i;


 run_read(sc, RT3070_GPIO_SWITCH, &tmp);
 tmp &= ~(1 << 4 | 1 << 7);
 run_write(sc, RT3070_GPIO_SWITCH, tmp);


 for (i = 0; i < nitems(rt3593_def_rf); i++) {
  run_rt3070_rf_write(sc, rt3593_def_rf[i].reg,
      rt3593_def_rf[i].val);
 }


 run_rt3070_rf_write(sc, 2, RT5390_RESCAL);


 run_adjust_freq_offset(sc);

 run_rt3070_rf_read(sc, 18, &rf);
 run_rt3070_rf_write(sc, 18, rf | RT3593_AUTOTUNE_BYPASS);





 run_read(sc, RT3070_LDO_CFG0, &tmp);
 tmp = (tmp & ~0x1f000000) | 0x0d000000;
 run_write(sc, RT3070_LDO_CFG0, tmp);
 run_delay(sc, 1);
 tmp = (tmp & ~0x1f000000) | 0x01000000;
 run_write(sc, RT3070_LDO_CFG0, tmp);

 sc->rf24_20mhz = 0x1f;
 sc->rf24_40mhz = 0x2f;


 run_bbp_read(sc, 25, &sc->bbp25);
 run_bbp_read(sc, 26, &sc->bbp26);

 run_read(sc, RT3070_OPT_14, &tmp);
 run_write(sc, RT3070_OPT_14, tmp | 1);
}
