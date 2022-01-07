
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct resource {int dummy; } ;
struct exca_softc {TYPE_1__* mem; int dev; } ;
struct TYPE_2__ {int realsize; int size; int cardaddr; } ;


 int ENOENT ;
 int EXCA_MEM_PAGESIZE ;
 int device_printf (int ,char*) ;
 int exca_do_mem_map (struct exca_softc*,int) ;
 int exca_mem_findmap (struct exca_softc*,struct resource*) ;
 int rounddown2 (int,int) ;

int
exca_mem_set_offset(struct exca_softc *sc, struct resource *res,
    uint32_t cardaddr, uint32_t *deltap)
{
 int win;
 uint32_t delta;

 win = exca_mem_findmap(sc, res);
 if (win < 0) {
  device_printf(sc->dev,
      "set_memory_offset: specified resource not active\n");
  return (ENOENT);
 }
 sc->mem[win].cardaddr = rounddown2(cardaddr, EXCA_MEM_PAGESIZE);
 delta = cardaddr % EXCA_MEM_PAGESIZE;
 if (deltap)
  *deltap = delta;
 sc->mem[win].realsize = sc->mem[win].size + delta +
     EXCA_MEM_PAGESIZE - 1;
 sc->mem[win].realsize = sc->mem[win].realsize -
     (sc->mem[win].realsize % EXCA_MEM_PAGESIZE);
 exca_do_mem_map(sc, win);
 return (0);
}
