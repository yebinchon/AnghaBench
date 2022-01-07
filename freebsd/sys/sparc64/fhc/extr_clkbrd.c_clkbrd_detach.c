
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clkbrd_softc {int * sc_bh; int * sc_bt; int sc_clk_ctrl; int sc_led_dev; } ;
typedef int device_t ;


 size_t CLKBRD_CLK ;
 int CLK_CTRL ;
 int bus_space_read_1 (int ,int ,int ) ;
 int bus_space_write_1 (int ,int ,int ,int ) ;
 int clkbrd_free_resources (struct clkbrd_softc*) ;
 struct clkbrd_softc* device_get_softc (int ) ;
 int led_destroy (int ) ;

__attribute__((used)) static int
clkbrd_detach(device_t dev)
{
 struct clkbrd_softc *sc;

 sc = device_get_softc(dev);

 led_destroy(sc->sc_led_dev);
 bus_space_write_1(sc->sc_bt[CLKBRD_CLK], sc->sc_bh[CLKBRD_CLK],
     CLK_CTRL, sc->sc_clk_ctrl);
 bus_space_read_1(sc->sc_bt[CLKBRD_CLK], sc->sc_bh[CLKBRD_CLK],
     CLK_CTRL);
 clkbrd_free_resources(sc);

 return (0);
}
