
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwi_softc {int dummy; } ;
struct bwi_regwin {int dummy; } ;


 int BWI_DBG_ATTACH ;
 int BWI_DBG_INIT ;
 int BWI_STATE_LO ;
 int BWI_STATE_LO_CLOCK ;
 int BWI_STATE_LO_RESET ;
 int CSR_READ_4 (struct bwi_softc*,int ) ;
 int DPRINTF (struct bwi_softc*,int,char*,int ) ;
 int bwi_regwin_disable_bits (struct bwi_softc*) ;
 int bwi_regwin_name (struct bwi_regwin*) ;

int
bwi_regwin_is_enabled(struct bwi_softc *sc, struct bwi_regwin *rw)
{
 uint32_t val, disable_bits;

 disable_bits = bwi_regwin_disable_bits(sc);
 val = CSR_READ_4(sc, BWI_STATE_LO);

 if ((val & (BWI_STATE_LO_CLOCK |
      BWI_STATE_LO_RESET |
      disable_bits)) == BWI_STATE_LO_CLOCK) {
  DPRINTF(sc, BWI_DBG_ATTACH | BWI_DBG_INIT, "%s is enabled\n",
   bwi_regwin_name(rw));
  return 1;
 } else {
  DPRINTF(sc, BWI_DBG_ATTACH | BWI_DBG_INIT, "%s is disabled\n",
   bwi_regwin_name(rw));
  return 0;
 }
}
