
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtwn_softc {char* name; struct r92c_softc* sc_priv; } ;
struct r92c_softc {int chip; } ;


 int R92C_CHIP_92C ;

__attribute__((used)) static void
r92ce_set_name(struct rtwn_softc *sc, uint8_t *buf)
{
 struct r92c_softc *rs = sc->sc_priv;

 if (rs->chip & R92C_CHIP_92C)
  sc->name = "RTL8192CE";
 else
  sc->name = "RTL8188CE";
}
