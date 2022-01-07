
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct exca_softc {int bsh; int bst; scalar_t__ offset; } ;


 int EXCA_REG_DATA ;
 int EXCA_REG_INDEX ;
 int bus_space_read_1 (int ,int ,int ) ;
 int bus_space_write_1 (int ,int ,int ,scalar_t__) ;

__attribute__((used)) static uint8_t
exca_io_getb(struct exca_softc *sc, int reg)
{
 bus_space_write_1(sc->bst, sc->bsh, EXCA_REG_INDEX, reg + sc->offset);
 return (bus_space_read_1(sc->bst, sc->bsh, EXCA_REG_DATA));
}
