
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vr_softc {scalar_t__ vr_revid; } ;


 int CSR_READ_1 (struct vr_softc*,int ) ;
 int CSR_WRITE_1 (struct vr_softc*,int ,int) ;
 scalar_t__ REV_ID_VT6102_A ;
 scalar_t__ REV_ID_VT6105_B0 ;
 int VR_LOCK_ASSERT (struct vr_softc*) ;
 int VR_PWRCFG_CLR ;
 int VR_PWRCFG_WOLEN ;
 int VR_PWRCSR1_CLR ;
 int VR_PWRCSR_CLR ;
 int VR_STICKHW ;
 int VR_STICKHW_DS0 ;
 int VR_STICKHW_DS1 ;
 int VR_STICKHW_WOL_ENB ;
 int VR_TESTREG_CLR ;
 int VR_WOLCFG_CLR ;
 int VR_WOLCFG_PATTERN_PAGE ;
 int VR_WOLCFG_PMEOVR ;
 int VR_WOLCFG_SAB ;
 int VR_WOLCFG_SAM ;
 int VR_WOLCR_CLR ;

__attribute__((used)) static void
vr_clrwol(struct vr_softc *sc)
{
 uint8_t v;

 VR_LOCK_ASSERT(sc);

 if (sc->vr_revid < REV_ID_VT6102_A)
  return;


 v = CSR_READ_1(sc, VR_STICKHW);
 v &= ~(VR_STICKHW_DS0 | VR_STICKHW_DS1 | VR_STICKHW_WOL_ENB);
 CSR_WRITE_1(sc, VR_STICKHW, v);


 CSR_WRITE_1(sc, VR_WOLCR_CLR, 0xFF);
 CSR_WRITE_1(sc, VR_WOLCFG_CLR,
     VR_WOLCFG_SAB | VR_WOLCFG_SAM | VR_WOLCFG_PMEOVR);
 CSR_WRITE_1(sc, VR_PWRCSR_CLR, 0xFF);
 CSR_WRITE_1(sc, VR_PWRCFG_CLR, VR_PWRCFG_WOLEN);
 if (sc->vr_revid > REV_ID_VT6105_B0) {

  CSR_WRITE_1(sc, VR_WOLCFG_CLR, VR_WOLCFG_PATTERN_PAGE);
  CSR_WRITE_1(sc, VR_TESTREG_CLR, 3);
  CSR_WRITE_1(sc, VR_PWRCSR1_CLR, 3);
 }
}
