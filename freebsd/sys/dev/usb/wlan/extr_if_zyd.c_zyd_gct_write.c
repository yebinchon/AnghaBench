
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct zyd_softc {int dummy; } ;
struct zyd_rf {struct zyd_softc* rf_sc; } ;


 int zyd_rfwrite (struct zyd_softc*,int) ;

__attribute__((used)) static int
zyd_gct_write(struct zyd_rf *rf, uint16_t value)
{
 struct zyd_softc *sc = rf->rf_sc;

 return zyd_rfwrite(sc, 0x300000 | 0x40000 | value);
}
