
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwohci_softc {int fc; } ;


 int FW_GLOCK (int *) ;
 int FW_GUNLOCK (int *) ;
 int fwohci_check_stat (struct fwohci_softc*) ;

void
fwohci_intr(void *arg)
{
 struct fwohci_softc *sc = (struct fwohci_softc *)arg;

 FW_GLOCK(&sc->fc);
 fwohci_check_stat(sc);
 FW_GUNLOCK(&sc->fc);
}
