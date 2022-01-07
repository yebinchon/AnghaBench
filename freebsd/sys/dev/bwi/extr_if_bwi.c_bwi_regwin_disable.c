
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwi_softc {int sc_dev; } ;
struct bwi_regwin {int dummy; } ;


 int BWI_DBG_ATTACH ;
 int BWI_DBG_INIT ;
 int BWI_STATE_HI ;
 int BWI_STATE_HI_BUSY ;
 int BWI_STATE_LO ;
 int BWI_STATE_LO_CLOCK ;
 int BWI_STATE_LO_FLAGS_MASK ;
 int BWI_STATE_LO_GATED_CLOCK ;
 int BWI_STATE_LO_RESET ;
 int CSR_READ_4 (struct bwi_softc*,int ) ;
 int CSR_WRITE_4 (struct bwi_softc*,int ,int) ;
 int DELAY (int) ;
 int DPRINTF (struct bwi_softc*,int,char*,int ) ;
 int NRETRY ;
 int __SHIFTIN (int,int ) ;
 int bwi_regwin_disable_bits (struct bwi_softc*) ;
 int bwi_regwin_name (struct bwi_regwin*) ;
 int device_printf (int ,char*,int ) ;

void
bwi_regwin_disable(struct bwi_softc *sc, struct bwi_regwin *rw, uint32_t flags)
{
 uint32_t state_lo, disable_bits;
 int i;

 state_lo = CSR_READ_4(sc, BWI_STATE_LO);




 if (state_lo & BWI_STATE_LO_RESET) {
  DPRINTF(sc, BWI_DBG_ATTACH | BWI_DBG_INIT,
   "%s was already disabled\n", bwi_regwin_name(rw));
  return;
 }

 disable_bits = bwi_regwin_disable_bits(sc);




 state_lo = BWI_STATE_LO_CLOCK | disable_bits;
 CSR_WRITE_4(sc, BWI_STATE_LO, state_lo);





 for (i = 0; i < 1000; ++i) {
  state_lo = CSR_READ_4(sc, BWI_STATE_LO);
  if (state_lo & disable_bits)
   break;
  DELAY(10);
 }
 if (i == 1000) {
  device_printf(sc->sc_dev, "%s disable clock timeout\n",
         bwi_regwin_name(rw));
 }

 for (i = 0; i < 1000; ++i) {
  uint32_t state_hi;

  state_hi = CSR_READ_4(sc, BWI_STATE_HI);
  if ((state_hi & BWI_STATE_HI_BUSY) == 0)
   break;
  DELAY(10);
 }
 if (i == 1000) {
  device_printf(sc->sc_dev, "%s wait BUSY unset timeout\n",
         bwi_regwin_name(rw));
 }





 state_lo = BWI_STATE_LO_RESET | disable_bits |
     BWI_STATE_LO_CLOCK | BWI_STATE_LO_GATED_CLOCK |
     __SHIFTIN(flags, BWI_STATE_LO_FLAGS_MASK);
 CSR_WRITE_4(sc, BWI_STATE_LO, state_lo);


 CSR_READ_4(sc, BWI_STATE_LO);
 DELAY(1);


 state_lo = BWI_STATE_LO_RESET | disable_bits |
     __SHIFTIN(flags, BWI_STATE_LO_FLAGS_MASK);
 CSR_WRITE_4(sc, BWI_STATE_LO, state_lo);


 CSR_READ_4(sc, BWI_STATE_LO);
 DELAY(1);
}
