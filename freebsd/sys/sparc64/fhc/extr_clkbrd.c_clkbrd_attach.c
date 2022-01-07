
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct clkbrd_softc {int* sc_rid; int sc_flags; int sc_led_dev; int * sc_bh; int * sc_bt; void* sc_clk_ctrl; int sc_dev; int ** sc_res; } ;
typedef int device_t ;


 int CLKBRD_CF ;
 size_t CLKBRD_CLK ;
 int CLKBRD_CLKVER ;
 int CLKBRD_HAS_CLKVER ;
 int CLKVER_SLOTS ;
 int CLKVER_SLOTS_MASK ;
 int CLKVER_SLOTS_PLUS ;
 int CLK_CTRL ;
 int CLK_STS1 ;



 int CLK_STS1_SLOTS_MASK ;
 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 void* bus_space_read_1 (int ,int ,int ) ;
 int clkbrd_free_resources (struct clkbrd_softc*) ;
 int clkbrd_led_func ;
 struct clkbrd_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int led_create (int ,struct clkbrd_softc*,char*) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
clkbrd_attach(device_t dev)
{
 struct clkbrd_softc *sc;
 int i, slots;
 uint8_t r;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 for (i = CLKBRD_CF; i <= CLKBRD_CLKVER; i++) {
  sc->sc_rid[i] = i;
  sc->sc_res[i] = bus_alloc_resource_any(sc->sc_dev,
      SYS_RES_MEMORY, &sc->sc_rid[i], RF_ACTIVE);
  if (sc->sc_res[i] == ((void*)0)) {
   if (i != CLKBRD_CLKVER) {
    device_printf(sc->sc_dev,
        "could not allocate resource %d\n", i);
    goto fail;
   }
   continue;
  }
  sc->sc_bt[i] = rman_get_bustag(sc->sc_res[i]);
  sc->sc_bh[i] = rman_get_bushandle(sc->sc_res[i]);
  if (i == CLKBRD_CLKVER)
   sc->sc_flags |= CLKBRD_HAS_CLKVER;
 }

 slots = 4;
 r = bus_space_read_1(sc->sc_bt[CLKBRD_CLK], sc->sc_bh[CLKBRD_CLK],
     CLK_STS1);
 switch (r & CLK_STS1_SLOTS_MASK) {
 case 130:
  slots = 16;
  break;
 case 128:
  slots = 8;
  break;
 case 129:
  if (sc->sc_flags & CLKBRD_HAS_CLKVER) {
   r = bus_space_read_1(sc->sc_bt[CLKBRD_CLKVER],
       sc->sc_bh[CLKBRD_CLKVER], CLKVER_SLOTS);
   if (r != 0 &&
       (r & CLKVER_SLOTS_MASK) == CLKVER_SLOTS_PLUS)
    slots = 5;
  }
 }

 device_printf(sc->sc_dev, "Sun Enterprise Exx00 machine: %d slots\n",
     slots);

 sc->sc_clk_ctrl = bus_space_read_1(sc->sc_bt[CLKBRD_CLK],
     sc->sc_bh[CLKBRD_CLK], CLK_CTRL);
 sc->sc_led_dev = led_create(clkbrd_led_func, sc, "clockboard");

 return (0);

 fail:
 clkbrd_free_resources(sc);

 return (ENXIO);
}
