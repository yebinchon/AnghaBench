
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicoc_softc {int reg_shift; int i2cfreq; int clockfreq; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int XLP_I2C_CLKFREQ ;
 int XLP_I2C_FREQ ;
 struct iicoc_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 int pci_get_device (int ) ;
 int pci_get_vendor (int ) ;

__attribute__((used)) static int
iicoc_probe(device_t dev)
{
 struct iicoc_softc *sc;

 sc = device_get_softc(dev);
 if ((pci_get_vendor(dev) == 0x184e) &&
     (pci_get_device(dev) == 0x1011)) {
  sc->clockfreq = XLP_I2C_CLKFREQ;
  sc->i2cfreq = XLP_I2C_FREQ;
  sc->reg_shift = 2;
  device_set_desc(dev, "Netlogic XLP I2C Controller");
  return (BUS_PROBE_DEFAULT);
 }
 return (ENXIO);
}
