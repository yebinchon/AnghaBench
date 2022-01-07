
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct exca_softc {scalar_t__ offset; int bsh; int bst; } ;


 int bus_space_write_1 (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void
exca_mem_putb(struct exca_softc *sc, int reg, uint8_t val)
{
 bus_space_write_1(sc->bst, sc->bsh, sc->offset + reg, val);
}
