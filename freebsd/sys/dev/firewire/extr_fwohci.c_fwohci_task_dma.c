
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct fwohci_softc {int intstat; } ;


 scalar_t__ atomic_readandclear_int (int *) ;
 int fwohci_intr_dma (struct fwohci_softc*,scalar_t__,int) ;

__attribute__((used)) static void
fwohci_task_dma(void *arg, int pending)
{
 struct fwohci_softc *sc = (struct fwohci_softc *)arg;
 uint32_t stat;

again:
 stat = atomic_readandclear_int(&sc->intstat);
 if (stat)
  fwohci_intr_dma(sc, stat, -1);
 else
  return;
 goto again;
}
