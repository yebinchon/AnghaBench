
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct csr TYPE_1__ ;


typedef int uint8_t ;
struct nxprtc_softc {int dev; } ;
typedef int csr ;
struct csr {int cs1; int cs2; int sec; } ;


 int PCF8563_R_CLKOUT ;
 int PCF85xx_B_CS1_STOP ;
 int PCF85xx_B_SECOND_OS ;
 int PCF85xx_R_CS1 ;
 int WAITFLAGS ;
 int device_printf (int ,char*) ;
 int nxprtc_readfrom (int ,int ,TYPE_1__*,int,int ) ;
 int write_reg (struct nxprtc_softc*,int ,int ) ;

__attribute__((used)) static int
pcf8563_start(struct nxprtc_softc *sc)
{
 struct csr {
  uint8_t cs1;
  uint8_t cs2;
  uint8_t sec;
 } csr;
 int err;


 if ((err = nxprtc_readfrom(sc->dev, PCF85xx_R_CS1, &csr,
     sizeof(csr), WAITFLAGS)) != 0){
  device_printf(sc->dev, "cannot read RTC control regs\n");
  return (err);
 }







 if ((csr.cs1 & PCF85xx_B_CS1_STOP) || (csr.sec & PCF85xx_B_SECOND_OS)) {
  device_printf(sc->dev,
      "WARNING: RTC battery failed; time is invalid\n");






  if ((err = write_reg(sc, PCF85xx_R_CS1, 0)) != 0) {
   device_printf(sc->dev, "cannot write CS1 reg\n");
   return (err);
  }

  if ((err = write_reg(sc, PCF8563_R_CLKOUT, 0)) != 0) {
   device_printf(sc->dev, "cannot write CS1 reg\n");
   return (err);
  }
 }

 return (0);
}
