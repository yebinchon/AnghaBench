
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vr_softc {int dummy; } ;


 int CSR_READ_1 (struct vr_softc*,int ) ;
 int CSR_WRITE_1 (struct vr_softc*,int ,int) ;
 int DELAY (int) ;
 int ETIMEDOUT ;
 int VR_CR0 ;
 int VR_CR0_TX_ON ;
 int VR_TIMEOUT ;

__attribute__((used)) static int
vr_tx_stop(struct vr_softc *sc)
{
 int i;
 uint8_t cmd;

 cmd = CSR_READ_1(sc, VR_CR0);
 if ((cmd & VR_CR0_TX_ON) != 0) {
  cmd &= ~VR_CR0_TX_ON;
  CSR_WRITE_1(sc, VR_CR0, cmd);
  for (i = VR_TIMEOUT; i > 0; i--) {
   DELAY(5);
   cmd = CSR_READ_1(sc, VR_CR0);
   if ((cmd & VR_CR0_TX_ON) == 0)
    break;
  }
  if (i == 0)
   return (ETIMEDOUT);
 }
 return (0);
}
