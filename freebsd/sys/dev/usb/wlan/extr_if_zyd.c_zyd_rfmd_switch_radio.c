
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zyd_softc {int dummy; } ;
struct zyd_rf {struct zyd_softc* rf_sc; } ;


 int ZYD_CR10 ;
 int ZYD_CR11 ;
 int zyd_write16_m (struct zyd_softc*,int ,int) ;

__attribute__((used)) static int
zyd_rfmd_switch_radio(struct zyd_rf *rf, int on)
{
 int error;
 struct zyd_softc *sc = rf->rf_sc;

 zyd_write16_m(sc, ZYD_CR10, on ? 0x89 : 0x15);
 zyd_write16_m(sc, ZYD_CR11, on ? 0x00 : 0x81);
fail:
 return (error);
}
