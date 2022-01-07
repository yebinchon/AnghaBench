
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct exca_softc {int bsh; int bst; scalar_t__ offset; } ;


 int EXCA_REG_DATA ;
 int EXCA_REG_INDEX ;
 int bus_space_write_1 (int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void
exca_io_putb(struct exca_softc *sc, int reg, uint8_t val)
{
 bus_space_write_1(sc->bst, sc->bsh, EXCA_REG_INDEX, reg + sc->offset);
 bus_space_write_1(sc->bst, sc->bsh, EXCA_REG_DATA, val);
}
