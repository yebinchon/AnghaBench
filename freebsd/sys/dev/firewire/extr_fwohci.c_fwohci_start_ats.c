
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwohci_softc {int fc; int atrs; } ;
struct firewire_comm {int dummy; } ;


 int FW_GLOCK (int *) ;
 int FW_GUNLOCK (int *) ;
 int fwohci_start (struct fwohci_softc*,int *) ;

__attribute__((used)) static void
fwohci_start_ats(struct firewire_comm *fc)
{
 struct fwohci_softc *sc = (struct fwohci_softc *)fc;
 FW_GLOCK(&sc->fc);
 fwohci_start(sc, &(sc->atrs));
 FW_GUNLOCK(&sc->fc);
 return;
}
