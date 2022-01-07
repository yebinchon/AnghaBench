
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int width ;
struct lbc_softc {TYPE_1__* sc_banks; } ;
struct lbc_devinfo {int di_bank; } ;
typedef int phandle_t ;
typedef int pcell_t ;
struct TYPE_2__ {scalar_t__ size; int width; } ;


 scalar_t__ OF_getprop (int ,char*,void*,int) ;

__attribute__((used)) static void
fdt_lbc_fixup(phandle_t node, struct lbc_softc *sc, struct lbc_devinfo *di)
{
 pcell_t width;
 int bank;

 if (OF_getprop(node, "bank-width", (void *)&width, sizeof(width)) <= 0)
  return;

 bank = di->di_bank;
 if (sc->sc_banks[bank].size == 0)
  return;


 sc->sc_banks[bank].width = width * 8;
}
