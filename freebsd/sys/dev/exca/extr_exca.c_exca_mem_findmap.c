
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct exca_softc {TYPE_1__* mem; } ;
struct TYPE_2__ {scalar_t__ memt; scalar_t__ addr; scalar_t__ size; } ;


 int EXCA_MEM_WINS ;
 scalar_t__ rman_get_bustag (struct resource*) ;
 scalar_t__ rman_get_size (struct resource*) ;
 scalar_t__ rman_get_start (struct resource*) ;

__attribute__((used)) static int
exca_mem_findmap(struct exca_softc *sc, struct resource *res)
{
 int win;

 for (win = 0; win < EXCA_MEM_WINS; win++) {
  if (sc->mem[win].memt == rman_get_bustag(res) &&
      sc->mem[win].addr == rman_get_start(res) &&
      sc->mem[win].size == rman_get_size(res))
   return (win);
 }
 return (-1);
}
