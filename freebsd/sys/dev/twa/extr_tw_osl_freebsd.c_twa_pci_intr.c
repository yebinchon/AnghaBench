
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twa_softc {int ctlr_handle; } ;
typedef int TW_VOID ;


 int tw_cl_interrupt (int *) ;
 int tw_osli_dbg_dprintf (int,struct twa_softc*,char*) ;

__attribute__((used)) static TW_VOID
twa_pci_intr(TW_VOID *arg)
{
 struct twa_softc *sc = (struct twa_softc *)arg;

 tw_osli_dbg_dprintf(10, sc, "entered");
 tw_cl_interrupt(&(sc->ctlr_handle));
}
