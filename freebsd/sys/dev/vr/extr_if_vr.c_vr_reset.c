
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vr_softc {scalar_t__ vr_revid; int vr_dev; } ;


 int CSR_READ_1 (struct vr_softc const*,int ) ;
 int CSR_WRITE_1 (struct vr_softc const*,int ,int) ;
 int DELAY (int) ;
 scalar_t__ REV_ID_VT6102_A ;
 int VR_CR1 ;
 int VR_CR1_RESET ;
 int VR_MISCCR1_FORSRST ;
 int VR_MISC_CR1 ;
 int VR_SETBIT (struct vr_softc const*,int ,int ) ;
 int VR_TIMEOUT ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
vr_reset(const struct vr_softc *sc)
{
 int i;



 CSR_WRITE_1(sc, VR_CR1, VR_CR1_RESET);
 if (sc->vr_revid < REV_ID_VT6102_A) {

  DELAY(100);
 }
 for (i = 0; i < VR_TIMEOUT; i++) {
  DELAY(10);
  if (!(CSR_READ_1(sc, VR_CR1) & VR_CR1_RESET))
   break;
 }
 if (i == VR_TIMEOUT) {
  if (sc->vr_revid < REV_ID_VT6102_A)
   device_printf(sc->vr_dev, "reset never completed!\n");
  else {

   device_printf(sc->vr_dev,
       "Using force reset command.\n");
   VR_SETBIT(sc, VR_MISC_CR1, VR_MISCCR1_FORSRST);




   DELAY(2000);
  }
 }

}
