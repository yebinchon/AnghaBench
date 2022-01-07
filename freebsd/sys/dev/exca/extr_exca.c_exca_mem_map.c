
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct exca_softc {int memalloc; int flags; TYPE_1__* mem; int dev; } ;
struct TYPE_2__ {int addr; int size; int realsize; int kind; scalar_t__ cardaddr; int memh; int memt; } ;


 int DPRINTF (char*,int,int,int,scalar_t__) ;
 int EINVAL ;
 int ENOSPC ;
 int EXCA_HAS_MEMREG_WIN ;
 scalar_t__ EXCA_MEMREG_WIN_SHIFT ;
 int EXCA_MEM_PAGESIZE ;
 int EXCA_MEM_WINS ;
 int device_printf (int ,char*) ;
 int exca_do_mem_map (struct exca_softc*,int) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;
 int rman_get_end (struct resource*) ;
 int rman_get_start (struct resource*) ;

int
exca_mem_map(struct exca_softc *sc, int kind, struct resource *res)
{
 int win;

 for (win = 0; win < EXCA_MEM_WINS; win++) {
  if ((sc->memalloc & (1 << win)) == 0) {
   sc->memalloc |= (1 << win);
   break;
  }
 }
 if (win >= EXCA_MEM_WINS)
  return (ENOSPC);
 if (sc->flags & EXCA_HAS_MEMREG_WIN) {

  if (rman_get_start(res) >> (EXCA_MEMREG_WIN_SHIFT + 8) != 0) {
   device_printf(sc->dev,
       "Does not support mapping above 4GB.");
   return (EINVAL);
  }

 } else {
  if (rman_get_start(res) >> EXCA_MEMREG_WIN_SHIFT != 0) {
   device_printf(sc->dev,
       "Does not support mapping above 16M.");
   return (EINVAL);
  }
 }

 sc->mem[win].cardaddr = 0;
 sc->mem[win].memt = rman_get_bustag(res);
 sc->mem[win].memh = rman_get_bushandle(res);
 sc->mem[win].addr = rman_get_start(res);
 sc->mem[win].size = rman_get_end(res) - sc->mem[win].addr + 1;
 sc->mem[win].realsize = sc->mem[win].size + EXCA_MEM_PAGESIZE - 1;
 sc->mem[win].realsize = sc->mem[win].realsize -
     (sc->mem[win].realsize % EXCA_MEM_PAGESIZE);
 sc->mem[win].kind = kind;
 DPRINTF("exca_mem_map window %d bus %x+%x card addr %x\n",
     win, sc->mem[win].addr, sc->mem[win].size, sc->mem[win].cardaddr);
 exca_do_mem_map(sc, win);

 return (0);
}
