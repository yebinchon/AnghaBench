
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int pages; TYPE_2__* page; } ;
struct upgt_softc {TYPE_1__ sc_memory; } ;
struct TYPE_4__ {int used; int addr; } ;



__attribute__((used)) static uint32_t
upgt_mem_alloc(struct upgt_softc *sc)
{
 int i;

 for (i = 0; i < sc->sc_memory.pages; i++) {
  if (sc->sc_memory.page[i].used == 0) {
   sc->sc_memory.page[i].used = 1;
   return (sc->sc_memory.page[i].addr);
  }
 }

 return (0);
}
