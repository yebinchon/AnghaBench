
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_regwin {int dummy; } ;
struct bwi_softc {struct bwi_regwin sc_bus_regwin; } ;


 int BWI_INTRVEC ;
 int CSR_WRITE_4 (struct bwi_softc*,int ,int ) ;
 int bwi_regwin_enable (struct bwi_softc*,struct bwi_regwin*,int ) ;
 int bwi_regwin_is_enabled (struct bwi_softc*,struct bwi_regwin*) ;
 int bwi_regwin_switch (struct bwi_softc*,struct bwi_regwin*,struct bwi_regwin**) ;

__attribute__((used)) static int
bwi_bus_attach(struct bwi_softc *sc)
{
 struct bwi_regwin *bus, *old;
 int error;

 bus = &sc->sc_bus_regwin;

 error = bwi_regwin_switch(sc, bus, &old);
 if (error)
  return error;

 if (!bwi_regwin_is_enabled(sc, bus))
  bwi_regwin_enable(sc, bus, 0);


 CSR_WRITE_4(sc, BWI_INTRVEC, 0);

 return bwi_regwin_switch(sc, old, ((void*)0));
}
