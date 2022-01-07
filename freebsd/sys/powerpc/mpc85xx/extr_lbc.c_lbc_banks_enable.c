
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct lbc_softc {int sc_bsh; int sc_bst; TYPE_1__* sc_banks; } ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ addr; int width; int decc; int wp; int msel; int atom; } ;


 int EINVAL ;
 int ENOSYS ;
 int LBC85XX_BR (int) ;
 int LBC85XX_OR (int) ;





 int LBC_DEV_MAX ;
 int bus_space_write_4 (int ,int ,int ,scalar_t__) ;
 scalar_t__ lbc_address_mask (scalar_t__) ;
 int lbc_banks_unmap (struct lbc_softc*) ;
 int printf (char*) ;

__attribute__((used)) static int
lbc_banks_enable(struct lbc_softc *sc)
{
 uint32_t size;
 uint32_t regval;
 int error, i;

 for (i = 0; i < LBC_DEV_MAX; i++) {
  size = sc->sc_banks[i].size;
  if (size == 0)
   continue;




  regval = sc->sc_banks[i].addr;
  switch (sc->sc_banks[i].width) {
  case 8:
   regval |= (1 << 11);
   break;
  case 16:
   regval |= (2 << 11);
   break;
  case 32:
   regval |= (3 << 11);
   break;
  default:
   error = EINVAL;
   goto fail;
  }
  regval |= (sc->sc_banks[i].decc << 9);
  regval |= (sc->sc_banks[i].wp << 8);
  regval |= (sc->sc_banks[i].msel << 5);
  regval |= (sc->sc_banks[i].atom << 2);
  regval |= 1;
  bus_space_write_4(sc->sc_bst, sc->sc_bsh,
      LBC85XX_BR(i), regval);




  regval = lbc_address_mask(size);
  switch (sc->sc_banks[i].msel) {
  case 131:

   regval |= 0x0ff7;
   break;
  case 132:

   regval |= 0x0796;
   break;
  case 130:
  case 129:
  case 128:
   printf("UPM mode not supported yet!");
   error = ENOSYS;
   goto fail;
  }
  bus_space_write_4(sc->sc_bst, sc->sc_bsh,
      LBC85XX_OR(i), regval);
 }

 return (0);

fail:
 lbc_banks_unmap(sc);
 return (error);
}
