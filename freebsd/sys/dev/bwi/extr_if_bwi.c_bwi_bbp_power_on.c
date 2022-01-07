
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_softc {int dummy; } ;
typedef enum bwi_clock_mode { ____Placeholder_bwi_clock_mode } bwi_clock_mode ;


 int bwi_power_on (struct bwi_softc*,int) ;
 int bwi_set_clock_mode (struct bwi_softc*,int) ;

__attribute__((used)) static int
bwi_bbp_power_on(struct bwi_softc *sc, enum bwi_clock_mode clk_mode)
{
 bwi_power_on(sc, 1);
 return bwi_set_clock_mode(sc, clk_mode);
}
