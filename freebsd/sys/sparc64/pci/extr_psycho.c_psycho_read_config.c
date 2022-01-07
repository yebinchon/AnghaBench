
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ sc_pci_secbus; int * sc_pci_bh; int sc_pci_cfgt; } ;
struct psycho_softc {int* sc_pci_hpbcfg; TYPE_1__ sc_ops; } ;
typedef int device_t ;


 size_t OFW_PCI_CS_CONFIG ;
 scalar_t__ PCIR_STATUS ;
 int PCI_REGMAX ;
 scalar_t__ PCS_DEVICE ;
 scalar_t__ PCS_FUNC ;
 int PSYCHO_CONF_OFF (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int bus_space_read_2 (int ,int ,int ) ;
 struct psycho_softc* device_get_softc (int ) ;
 int le16dec (int*) ;
 int le16enc (int*,int ) ;
 int le32dec (int*) ;
 int ofw_pci_read_config_common (int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static uint32_t
psycho_read_config(device_t dev, u_int bus, u_int slot, u_int func, u_int reg,
    int width)
{
 struct psycho_softc *sc;

 sc = device_get_softc(dev);
 if (bus == sc->sc_ops.sc_pci_secbus && slot == PCS_DEVICE &&
     func == PCS_FUNC) {
  if (reg % width != 0)
   return (-1);

  if (reg >= sizeof(sc->sc_pci_hpbcfg))
   return (0);

  if ((reg < PCIR_STATUS && reg + width > PCIR_STATUS) ||
      reg == PCIR_STATUS || reg == PCIR_STATUS + 1)
   le16enc(&sc->sc_pci_hpbcfg[PCIR_STATUS],
       bus_space_read_2(sc->sc_ops.sc_pci_cfgt,
       sc->sc_ops.sc_pci_bh[OFW_PCI_CS_CONFIG],
       PSYCHO_CONF_OFF(sc->sc_ops.sc_pci_secbus,
       PCS_DEVICE, PCS_FUNC, PCIR_STATUS)));

  switch (width) {
  case 1:
   return (sc->sc_pci_hpbcfg[reg]);
  case 2:
   return (le16dec(&sc->sc_pci_hpbcfg[reg]));
  case 4:
   return (le32dec(&sc->sc_pci_hpbcfg[reg]));
  }
 }

 return (ofw_pci_read_config_common(dev, PCI_REGMAX,
     PSYCHO_CONF_OFF(bus, slot, func, reg), bus, slot, func, reg,
     width));
}
