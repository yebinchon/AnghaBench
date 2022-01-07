
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct nct_softc {int * iores; } ;
typedef scalar_t__ reg_t ;


 scalar_t__ NCT_IO_IOR ;
 scalar_t__ NCT_LD7_GPIO0_IOR ;
 scalar_t__ NCT_LD7_GPIO1_IOR ;

__attribute__((used)) static uint8_t
nct_get_ioreg(struct nct_softc *sc, reg_t reg, int group)
{
 uint8_t ioreg;

 if (sc->iores != ((void*)0))
  ioreg = NCT_IO_IOR + reg;
 else if (group == 0)
  ioreg = NCT_LD7_GPIO0_IOR + reg;
 else
  ioreg = NCT_LD7_GPIO1_IOR + reg;
 return (ioreg);
}
