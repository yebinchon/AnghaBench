
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwohci_softc {int dummy; } ;
struct firewire_comm {int dummy; } ;


 int FW_GLOCK (struct firewire_comm*) ;
 int FW_GUNLOCK (struct firewire_comm*) ;
 int fwohci_check_stat (struct fwohci_softc*) ;

void
fwohci_poll(struct firewire_comm *fc, int quick, int count)
{
 struct fwohci_softc *sc = (struct fwohci_softc *)fc;

 FW_GLOCK(fc);
 fwohci_check_stat(sc);
 FW_GUNLOCK(fc);
}
