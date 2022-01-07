
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ sc_pci_secbus; } ;
struct schizo_softc {scalar_t__ sc_mode; TYPE_1__ sc_ops; } ;
typedef int device_t ;


 int PCI_REGMAX ;
 scalar_t__ SCHIZO_MODE_SCZ ;
 int STX_CONF_OFF (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ STX_CS_DEVICE ;
 scalar_t__ STX_CS_FUNC ;
 struct schizo_softc* device_get_softc (int ) ;
 int ofw_pci_read_config_common (int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static uint32_t
schizo_read_config(device_t dev, u_int bus, u_int slot, u_int func, u_int reg,
    int width)
{
 struct schizo_softc *sc;

 sc = device_get_softc(dev);



 if (sc->sc_mode == SCHIZO_MODE_SCZ &&
     bus == sc->sc_ops.sc_pci_secbus && slot == STX_CS_DEVICE &&
     func == STX_CS_FUNC && reg + width > 0x80)
  return (0);

 return (ofw_pci_read_config_common(dev, PCI_REGMAX, STX_CONF_OFF(bus,
     slot, func, reg), bus, slot, func, reg, width));
}
