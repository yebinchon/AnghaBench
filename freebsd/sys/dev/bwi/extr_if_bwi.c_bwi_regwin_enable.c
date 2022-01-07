
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwi_softc {int dummy; } ;
struct bwi_regwin {int dummy; } ;


 int BWI_IMSTATE ;
 int BWI_IMSTATE_INBAND_ERR ;
 int BWI_IMSTATE_TIMEOUT ;
 int BWI_STATE_HI ;
 int BWI_STATE_HI_SERROR ;
 int BWI_STATE_LO ;
 int BWI_STATE_LO_CLOCK ;
 int BWI_STATE_LO_FLAGS_MASK ;
 int BWI_STATE_LO_GATED_CLOCK ;
 int BWI_STATE_LO_RESET ;
 int CSR_READ_4 (struct bwi_softc*,int ) ;
 int CSR_WRITE_4 (struct bwi_softc*,int ,int) ;
 int DELAY (int) ;
 int __SHIFTIN (int,int ) ;
 int bwi_regwin_disable (struct bwi_softc*,struct bwi_regwin*,int) ;

void
bwi_regwin_enable(struct bwi_softc *sc, struct bwi_regwin *rw, uint32_t flags)
{
 uint32_t state_lo, state_hi, imstate;

 bwi_regwin_disable(sc, rw, flags);


 state_lo = BWI_STATE_LO_RESET |
     BWI_STATE_LO_CLOCK |
     BWI_STATE_LO_GATED_CLOCK |
     __SHIFTIN(flags, BWI_STATE_LO_FLAGS_MASK);
 CSR_WRITE_4(sc, BWI_STATE_LO, state_lo);


 CSR_READ_4(sc, BWI_STATE_LO);
 DELAY(1);

 state_hi = CSR_READ_4(sc, BWI_STATE_HI);
 if (state_hi & BWI_STATE_HI_SERROR)
  CSR_WRITE_4(sc, BWI_STATE_HI, 0);

 imstate = CSR_READ_4(sc, BWI_IMSTATE);
 if (imstate & (BWI_IMSTATE_INBAND_ERR | BWI_IMSTATE_TIMEOUT)) {
  imstate &= ~(BWI_IMSTATE_INBAND_ERR | BWI_IMSTATE_TIMEOUT);
  CSR_WRITE_4(sc, BWI_IMSTATE, imstate);
 }


 state_lo = BWI_STATE_LO_CLOCK |
     BWI_STATE_LO_GATED_CLOCK |
     __SHIFTIN(flags, BWI_STATE_LO_FLAGS_MASK);
 CSR_WRITE_4(sc, BWI_STATE_LO, state_lo);


 CSR_READ_4(sc, BWI_STATE_LO);
 DELAY(1);


 state_lo = BWI_STATE_LO_CLOCK |
     __SHIFTIN(flags, BWI_STATE_LO_FLAGS_MASK);
 CSR_WRITE_4(sc, BWI_STATE_LO, state_lo);


 CSR_READ_4(sc, BWI_STATE_LO);
 DELAY(1);
}
