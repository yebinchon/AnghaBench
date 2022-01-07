
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pci_xhci_softc {int caplength; int hcsparams1; int hcsparams2; int hcsparams3; int hccparams1; int dboff; int rtsoff; int hccparams2; } ;


 int DPRINTF (char*) ;
__attribute__((used)) static uint64_t
pci_xhci_hostcap_read(struct pci_xhci_softc *sc, uint64_t offset)
{
 uint64_t value;

 switch (offset) {
 case 135:
  value = sc->caplength;
  break;

 case 131:
  value = sc->hcsparams1;
  break;

 case 130:
  value = sc->hcsparams2;
  break;

 case 129:
  value = sc->hcsparams3;
  break;

 case 132:
  value = sc->hccparams1;
  break;

 case 134:
  value = sc->dboff;
  break;

 case 128:
  value = sc->rtsoff;
  break;

 case 133:
  value = sc->hccparams2;
  break;

 default:
  value = 0;
  break;
 }

 DPRINTF(("pci_xhci: hostcap read offset 0x%lx -> 0x%lx\r\n",
         offset, value));

 return (value);
}
