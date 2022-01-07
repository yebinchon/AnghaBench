
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_softc {int dummy; } ;


 int BWI_CLOCK_MODE_SLOW ;
 int bwi_power_off (struct bwi_softc*,int) ;
 int bwi_set_clock_mode (struct bwi_softc*,int ) ;

__attribute__((used)) static void
bwi_bbp_power_off(struct bwi_softc *sc)
{
 bwi_set_clock_mode(sc, BWI_CLOCK_MODE_SLOW);
 bwi_power_off(sc, 1);
}
