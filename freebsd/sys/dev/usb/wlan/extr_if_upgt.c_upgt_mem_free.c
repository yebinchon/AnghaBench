
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int pages; TYPE_1__* page; } ;
struct upgt_softc {int sc_dev; TYPE_2__ sc_memory; } ;
struct TYPE_3__ {scalar_t__ addr; scalar_t__ used; } ;


 int device_printf (int ,char*,scalar_t__) ;

__attribute__((used)) static void
upgt_mem_free(struct upgt_softc *sc, uint32_t addr)
{
 int i;

 for (i = 0; i < sc->sc_memory.pages; i++) {
  if (sc->sc_memory.page[i].addr == addr) {
   sc->sc_memory.page[i].used = 0;
   return;
  }
 }

 device_printf(sc->sc_dev,
     "could not free memory address 0x%08x\n", addr);
}
