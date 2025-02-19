
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zyd_softc {scalar_t__ sc_macrev; } ;
struct zyd_rf {struct zyd_softc* rf_sc; } ;


 int ZYD_CR11 ;
 int ZYD_CR251 ;
 scalar_t__ ZYD_ZD1211 ;
 int zyd_write16_m (struct zyd_softc*,int ,int) ;

__attribute__((used)) static int
zyd_al2230_switch_radio(struct zyd_rf *rf, int on)
{
 struct zyd_softc *sc = rf->rf_sc;
 int error, on251 = (sc->sc_macrev == ZYD_ZD1211) ? 0x3f : 0x7f;

 zyd_write16_m(sc, ZYD_CR11, on ? 0x00 : 0x04);
 zyd_write16_m(sc, ZYD_CR251, on ? on251 : 0x2f);
fail:
 return (error);
}
