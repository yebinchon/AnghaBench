
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4780_clock_softc {int dummy; } ;
typedef int * device_t ;


 int CGU_LOCK (struct jz4780_clock_softc*) ;
 int CGU_UNLOCK (struct jz4780_clock_softc*) ;
 int CSR_READ_4 (struct jz4780_clock_softc*,int ) ;
 int CSR_WRITE_4 (struct jz4780_clock_softc*,int ,int) ;
 int DELAY (int) ;
 int JZ_OPCR ;
 int JZ_USBPCR ;
 int JZ_USBPCR1 ;
 int JZ_USBRDT ;
 int JZ_USBVBFIL ;
 int OPCR_SPENDN0 ;
 int PCR_COMMONONN ;
 int PCR_OTG_DISABLE ;
 int PCR_POR ;
 int PCR_SYNOPSYS ;
 int PCR_USB_MODE ;
 int PCR_VBUSVLDEXT ;
 int PCR_VBUSVLDEXTSEL ;
 int PCR_WORD_I_F0 ;
 int PCR_WORD_I_F1 ;
 int REG_SET (int,int ,int ) ;
 int USBRDT_USBRDT ;
 int USBRDT_VBFIL_LD_EN ;
 int USBRESET_DETECT_TIME ;
 int USBVBFIL_IDDIGFIL ;
 int USBVBFIL_USBVBFIL ;
 int * devclass_get_device (int ,int ) ;
 struct jz4780_clock_softc* device_get_softc (int *) ;
 int jz4780_clock_devclass ;

int
jz4780_otg_enable(void)
{
 device_t dev;
 struct jz4780_clock_softc *sc;
 uint32_t reg;

 dev = devclass_get_device(jz4780_clock_devclass, 0);
 if (dev == ((void*)0))
  return (-1);

 sc = device_get_softc(dev);

 CGU_LOCK(sc);


 reg = CSR_READ_4(sc, JZ_USBPCR1);
 reg |= PCR_SYNOPSYS;


 reg |= PCR_WORD_I_F0 | PCR_WORD_I_F1;
 CSR_WRITE_4(sc, JZ_USBPCR1, reg);


 reg = CSR_READ_4(sc, JZ_USBVBFIL);
 reg = REG_SET(reg, USBVBFIL_IDDIGFIL, 0);
 reg = REG_SET(reg, USBVBFIL_USBVBFIL, 0);
 CSR_WRITE_4(sc, JZ_USBVBFIL, reg);


 reg = CSR_READ_4(sc, JZ_USBRDT);
 reg = REG_SET(reg, USBRDT_USBRDT, USBRESET_DETECT_TIME);
 reg |= USBRDT_VBFIL_LD_EN;
 CSR_WRITE_4(sc, JZ_USBRDT, reg);


 reg = CSR_READ_4(sc, JZ_USBPCR);
 reg |= PCR_USB_MODE;
 reg |= PCR_COMMONONN;
 reg |= PCR_VBUSVLDEXT;
 reg |= PCR_VBUSVLDEXTSEL;
 reg &= ~(PCR_OTG_DISABLE);
 CSR_WRITE_4(sc, JZ_USBPCR, reg);


 reg = CSR_READ_4(sc, JZ_USBPCR);
 reg |= PCR_POR;
 CSR_WRITE_4(sc, JZ_USBPCR, reg);
 DELAY(1000);
 reg = CSR_READ_4(sc, JZ_USBPCR);
 reg &= ~(PCR_POR);
 CSR_WRITE_4(sc, JZ_USBPCR, reg);


 reg = CSR_READ_4(sc, JZ_OPCR);
 reg |= OPCR_SPENDN0;
 CSR_WRITE_4(sc, JZ_OPCR, reg);

 CGU_UNLOCK(sc);
 return (0);
}
