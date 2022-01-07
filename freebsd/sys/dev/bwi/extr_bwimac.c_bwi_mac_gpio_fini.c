
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_softc {int dummy; } ;
struct bwi_regwin {int dummy; } ;
struct bwi_mac {struct bwi_softc* mac_sc; } ;


 int BWI_GPIO_CTRL ;
 struct bwi_regwin* BWI_GPIO_REGWIN (struct bwi_softc*) ;
 int CSR_WRITE_4 (struct bwi_softc*,int ,int ) ;
 int bwi_regwin_switch (struct bwi_softc*,struct bwi_regwin*,struct bwi_regwin**) ;

__attribute__((used)) static int
bwi_mac_gpio_fini(struct bwi_mac *mac)
{
 struct bwi_softc *sc = mac->mac_sc;
 struct bwi_regwin *old, *gpio_rw;
 int error;

 gpio_rw = BWI_GPIO_REGWIN(sc);
 error = bwi_regwin_switch(sc, gpio_rw, &old);
 if (error)
  return error;

 CSR_WRITE_4(sc, BWI_GPIO_CTRL, 0);

 return bwi_regwin_switch(sc, old, ((void*)0));
}
