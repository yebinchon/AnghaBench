
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_pci_softc {int quirks; } ;
struct bhnd_core_info {int unit; } ;
typedef int device_t ;
 int BWN_QUIRK_ENET_HW_UNPOPULATED ;
 int BWN_QUIRK_SOFTMODEM_UNPOPULATED ;
 int BWN_QUIRK_USBH_UNPOPULATED ;
 int BWN_QUIRK_WLAN_DUALCORE ;
 int bhnd_core_class (struct bhnd_core_info*) ;
 struct bwn_pci_softc* device_get_softc (int ) ;

__attribute__((used)) static bool
bwn_pci_is_core_disabled(device_t dev, device_t child,
    struct bhnd_core_info *core)
{
 struct bwn_pci_softc *sc;

 sc = device_get_softc(dev);

 switch (bhnd_core_class(core)) {
 case 128:
  if (core->unit > 0 && !(sc->quirks & BWN_QUIRK_WLAN_DUALCORE))
   return (1);

  return (0);

 case 133:
 case 132:
 case 131:
  return ((sc->quirks & BWN_QUIRK_ENET_HW_UNPOPULATED) != 0);

 case 129:
  return ((sc->quirks & BWN_QUIRK_USBH_UNPOPULATED) != 0);

 case 130:
  return ((sc->quirks & BWN_QUIRK_SOFTMODEM_UNPOPULATED) != 0);

 default:
  return (0);
 }
}
