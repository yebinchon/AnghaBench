
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int dummy; } ;


 int TWE_IO_LOCK (struct twe_softc*) ;
 int TWE_IO_UNLOCK (struct twe_softc*) ;
 int twe_intr (struct twe_softc*) ;

__attribute__((used)) static void
twe_pci_intr(void *arg)
{
    struct twe_softc *sc = arg;

    TWE_IO_LOCK(sc);
    twe_intr(sc);
    TWE_IO_UNLOCK(sc);
}
