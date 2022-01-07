
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct mrsas_softc {int fast_path_io; } ;


 scalar_t__ MR_ValidateMapInfo (struct mrsas_softc*) ;
 int mrsas_get_ld_map_info (struct mrsas_softc*) ;

__attribute__((used)) static int
mrsas_get_map_info(struct mrsas_softc *sc)
{
 uint8_t retcode = 0;

 sc->fast_path_io = 0;
 if (!mrsas_get_ld_map_info(sc)) {
  retcode = MR_ValidateMapInfo(sc);
  if (retcode == 0) {
   sc->fast_path_io = 1;
   return 0;
  }
 }
 return 1;
}
