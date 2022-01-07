
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siba_bhndb_softc {int quirks; } ;


 int SIBA_QUIRK_PCIE_D11_SB_TIMEOUT ;
 int siba_bhndb_wars_pcie_clear_d11_timeout (struct siba_bhndb_softc*) ;

__attribute__((used)) static int
siba_bhndb_wars_hwup(struct siba_bhndb_softc *sc)
{
 int error;

 if (sc->quirks & SIBA_QUIRK_PCIE_D11_SB_TIMEOUT) {
  if ((error = siba_bhndb_wars_pcie_clear_d11_timeout(sc)))
   return (error);
 }

 return (0);
}
