
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct exca_softc {scalar_t__ offset; int bsh; int bst; } ;


 int bus_space_read_1 (int ,int ,scalar_t__) ;

__attribute__((used)) static uint8_t
exca_mem_getb(struct exca_softc *sc, int reg)
{
 return (bus_space_read_1(sc->bst, sc->bsh, sc->offset + reg));
}
