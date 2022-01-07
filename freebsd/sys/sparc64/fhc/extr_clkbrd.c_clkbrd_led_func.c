
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct clkbrd_softc {int * sc_bh; int * sc_bt; } ;


 size_t CLKBRD_CLK ;
 int CLK_CTRL ;
 int CLK_CTRL_RLED ;
 int bus_space_read_1 (int ,int ,int ) ;
 int bus_space_write_1 (int ,int ,int ,int ) ;

__attribute__((used)) static void
clkbrd_led_func(void *arg, int onoff)
{
 struct clkbrd_softc *sc;
 uint8_t r;

 sc = (struct clkbrd_softc *)arg;

 r = bus_space_read_1(sc->sc_bt[CLKBRD_CLK], sc->sc_bh[CLKBRD_CLK],
     CLK_CTRL);
 if (onoff)
  r |= CLK_CTRL_RLED;
 else
  r &= ~CLK_CTRL_RLED;
 bus_space_write_1(sc->sc_bt[CLKBRD_CLK], sc->sc_bh[CLKBRD_CLK],
     CLK_CTRL, r);
 bus_space_read_1(sc->sc_bt[CLKBRD_CLK], sc->sc_bh[CLKBRD_CLK],
     CLK_CTRL);
}
