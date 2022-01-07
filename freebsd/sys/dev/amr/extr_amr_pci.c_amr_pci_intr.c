
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {int dummy; } ;


 int amr_done (struct amr_softc*) ;
 int debug_called (int) ;

__attribute__((used)) static void
amr_pci_intr(void *arg)
{
    struct amr_softc *sc = (struct amr_softc *)arg;

    debug_called(3);


    amr_done(sc);
}
