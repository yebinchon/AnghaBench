
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct exca_softc {int putb; int getb; scalar_t__ flags; int offset; int bsh; int bst; scalar_t__ ioalloc; scalar_t__ memalloc; int dev; } ;
typedef int device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int exca_mem_getb ;
 int exca_mem_putb ;

void
exca_init(struct exca_softc *sc, device_t dev,
    bus_space_tag_t bst, bus_space_handle_t bsh, uint32_t offset)
{
 sc->dev = dev;
 sc->memalloc = 0;
 sc->ioalloc = 0;
 sc->bst = bst;
 sc->bsh = bsh;
 sc->offset = offset;
 sc->flags = 0;
 sc->getb = exca_mem_getb;
 sc->putb = exca_mem_putb;
}
