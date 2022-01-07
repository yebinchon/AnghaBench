
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fwohci_softc {int dummy; } ;
struct firewire_comm {int dummy; } ;


 int OHCI_CYCLETIMER ;
 int OREAD (struct fwohci_softc*,int ) ;

uint32_t
fwohci_cyctimer(struct firewire_comm *fc)
{
 struct fwohci_softc *sc = (struct fwohci_softc *)fc;
 return (OREAD(sc, OHCI_CYCLETIMER));
}
