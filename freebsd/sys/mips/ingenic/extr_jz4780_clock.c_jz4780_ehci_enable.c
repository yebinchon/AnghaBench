
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
 int JZ_SRBC ;
 int JZ_USBPCR ;
 int JZ_USBPCR1 ;
 int OPCR_SPENDN1 ;
 int PCR_DMPD1 ;
 int PCR_DPPD1 ;
 int PCR_OTG_DISABLE ;
 int PCR_POR ;
 int PCR_WORD_I_F0 ;
 int PCR_WORD_I_F1 ;
 int SRBC_UHC_SR ;
 int * devclass_get_device (int ,int ) ;
 struct jz4780_clock_softc* device_get_softc (int *) ;
 int hz ;
 int jz4780_clock_devclass ;
 scalar_t__ jz4780_ehci_clk_config (struct jz4780_clock_softc*) ;

int
jz4780_ehci_enable(void)
{
 device_t dev;
 struct jz4780_clock_softc *sc;
 uint32_t reg;

 dev = devclass_get_device(jz4780_clock_devclass, 0);
 if (dev == ((void*)0))
  return (-1);

 sc = device_get_softc(dev);





 if (jz4780_ehci_clk_config(sc) != 0)
  return (-1);

 CGU_LOCK(sc);


 reg = CSR_READ_4(sc, JZ_USBPCR);
 reg &= ~(PCR_OTG_DISABLE);
 CSR_WRITE_4(sc, JZ_USBPCR, reg);


 reg = CSR_READ_4(sc, JZ_OPCR);
 reg |= OPCR_SPENDN1;
 CSR_WRITE_4(sc, JZ_OPCR, reg);


 reg = CSR_READ_4(sc, JZ_USBPCR1);
 reg |= PCR_DMPD1;
 CSR_WRITE_4(sc, JZ_USBPCR1, reg);


 reg = CSR_READ_4(sc, JZ_USBPCR1);
 reg |= PCR_DPPD1;
 CSR_WRITE_4(sc, JZ_USBPCR1, reg);


 reg = CSR_READ_4(sc, JZ_USBPCR1);
 reg |= PCR_WORD_I_F1 | PCR_WORD_I_F0;
 CSR_WRITE_4(sc, JZ_USBPCR1, reg);


 reg = CSR_READ_4(sc, JZ_USBPCR);
 reg |= PCR_POR;
 CSR_WRITE_4(sc, JZ_USBPCR, reg);
 DELAY(1);
 reg = CSR_READ_4(sc, JZ_USBPCR);
 reg &= ~(PCR_POR);
 CSR_WRITE_4(sc, JZ_USBPCR, reg);


 reg = CSR_READ_4(sc, JZ_SRBC);
 reg |= SRBC_UHC_SR;
 CSR_WRITE_4(sc, JZ_SRBC, reg);

 DELAY(300*hz/1000);

 reg = CSR_READ_4(sc, JZ_SRBC);
 reg &= ~(SRBC_UHC_SR);
 CSR_WRITE_4(sc, JZ_SRBC, reg);


 DELAY(300*hz/1000);

 CGU_UNLOCK(sc);
 return (0);
}
