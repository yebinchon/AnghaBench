
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct resource {int dummy; } ;
struct exca_softc {TYPE_1__* mem; int dev; } ;
struct TYPE_2__ {int kind; } ;


 int ENOENT ;




 int PCCARD_MEM_16BIT ;
 int PCCARD_MEM_ATTR ;
 int device_printf (int ,char*) ;
 int exca_do_mem_map (struct exca_softc*,int) ;
 int exca_mem_findmap (struct exca_softc*,struct resource*) ;

int
exca_mem_set_flags(struct exca_softc *sc, struct resource *res, uint32_t flags)
{
 int win;

 win = exca_mem_findmap(sc, res);
 if (win < 0) {
  device_printf(sc->dev,
      "set_res_flags: specified resource not active\n");
  return (ENOENT);
 }

 switch (flags)
 {
 case 129:
  sc->mem[win].kind |= PCCARD_MEM_ATTR;
  break;
 case 128:
  sc->mem[win].kind &= ~PCCARD_MEM_ATTR;
  break;
 case 131:
  sc->mem[win].kind |= PCCARD_MEM_16BIT;
  break;
 case 130:
  sc->mem[win].kind &= ~PCCARD_MEM_16BIT;
  break;
 }
 exca_do_mem_map(sc, win);
 return (0);
}
