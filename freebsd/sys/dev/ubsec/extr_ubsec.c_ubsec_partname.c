
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubsec_softc {int sc_dev; } ;
 int pci_get_device (int ) ;
 int pci_get_vendor (int ) ;

__attribute__((used)) static const char*
ubsec_partname(struct ubsec_softc *sc)
{

 switch (pci_get_vendor(sc->sc_dev)) {
 case 129:
  switch (pci_get_device(sc->sc_dev)) {
  case 140: return "Broadcom 5801";
  case 139: return "Broadcom 5802";
  case 138: return "Broadcom 5805";
  case 137: return "Broadcom 5820";
  case 136: return "Broadcom 5821";
  case 135: return "Broadcom 5822";
  case 134: return "Broadcom 5823";
  case 133: return "Broadcom 5825";
  }
  return "Broadcom unknown-part";
 case 130:
  switch (pci_get_device(sc->sc_dev)) {
  case 141: return "Bluesteel 5601";
  }
  return "Bluesteel unknown-part";
 case 128:
  switch (pci_get_device(sc->sc_dev)) {
  case 132: return "Sun Crypto 5821";
  case 131: return "Sun Crypto 1K";
  }
  return "Sun unknown-part";
 }
 return "Unknown-vendor unknown-part";
}
