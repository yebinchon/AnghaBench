
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nct_softc {int curgrp; int iores; } ;


 int GPIO_ASSERT_LOCKED (struct nct_softc*) ;
 int NCT_IO_GSR ;
 int bus_write_1 (int ,int ,int) ;

__attribute__((used)) static void
nct_io_set_group(struct nct_softc *sc, int group)
{

 GPIO_ASSERT_LOCKED(sc);
 if (group != sc->curgrp) {
  bus_write_1(sc->iores, NCT_IO_GSR, group);
  sc->curgrp = group;
 }
}
