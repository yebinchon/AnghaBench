
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint16_t ;
struct fxp_softc {int dev; } ;


 void* CSR_READ_1 (struct fxp_softc*,int ) ;
 int DELAY (int) ;
 int FXP_CSR_FC_STATUS ;
 int FXP_CSR_FC_THRESH ;
 int FXP_CSR_SCB_COMMAND ;
 int FXP_CSR_SCB_RUSCUS ;
 int FXP_CSR_SCB_STATACK ;
 int device_printf (int ,char*,void*,void*,void*,int ) ;

__attribute__((used)) static void
fxp_scb_wait(struct fxp_softc *sc)
{
 union {
  uint16_t w;
  uint8_t b[2];
 } flowctl;
 int i = 10000;

 while (CSR_READ_1(sc, FXP_CSR_SCB_COMMAND) && --i)
  DELAY(2);
 if (i == 0) {
  flowctl.b[0] = CSR_READ_1(sc, FXP_CSR_FC_THRESH);
  flowctl.b[1] = CSR_READ_1(sc, FXP_CSR_FC_STATUS);
  device_printf(sc->dev, "SCB timeout: 0x%x 0x%x 0x%x 0x%x\n",
      CSR_READ_1(sc, FXP_CSR_SCB_COMMAND),
      CSR_READ_1(sc, FXP_CSR_SCB_STATACK),
      CSR_READ_1(sc, FXP_CSR_SCB_RUSCUS), flowctl.w);
 }
}
