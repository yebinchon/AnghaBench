
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status_suspend; } ;
struct uss820dci_softc {TYPE_1__ sc_flags; } ;


 int DPRINTFN (int ,char*) ;

__attribute__((used)) static void
uss820dci_wakeup_peer(struct uss820dci_softc *sc)
{
 if (!(sc->sc_flags.status_suspend)) {
  return;
 }
 DPRINTFN(0, "not supported\n");
}
