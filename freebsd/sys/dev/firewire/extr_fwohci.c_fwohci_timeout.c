
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwohci_softc {int dummy; } ;



void
fwohci_timeout(void *arg)
{
 struct fwohci_softc *sc;

 sc = (struct fwohci_softc *)arg;
}
