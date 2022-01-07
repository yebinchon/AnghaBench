
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pccard_io_handle {int addr; int size; size_t width; } ;
struct io_map_index_st {int stop_lsb; int stop_msb; int start_lsb; int start_msb; int ioenable; int * ioctlbits; int ioctlmask; } ;
struct exca_softc {struct pccard_io_handle* io; } ;


 int DPRINTF (char*,int,int,int,int,int,int,int) ;
 int EXCA_ADDRWIN_ENABLE ;
 int EXCA_IOCTL ;
 int exca_clrb (struct exca_softc*,int ,int ) ;
 int exca_getb (struct exca_softc*,int ) ;
 int exca_putb (struct exca_softc*,int ,int) ;
 int exca_setb (struct exca_softc*,int ,int ) ;
 struct io_map_index_st* io_map_index ;

__attribute__((used)) static void
exca_do_io_map(struct exca_softc *sc, int win)
{
 struct io_map_index_st *map;

 struct pccard_io_handle *io;

 map = &io_map_index[win];
 io = &sc->io[win];
 exca_putb(sc, map->start_lsb, io->addr & 0xff);
 exca_putb(sc, map->start_msb, (io->addr >> 8) & 0xff);

 exca_putb(sc, map->stop_lsb, (io->addr + io->size - 1) & 0xff);
 exca_putb(sc, map->stop_msb, ((io->addr + io->size - 1) >> 8) & 0xff);

 exca_clrb(sc, EXCA_IOCTL, map->ioctlmask);
 exca_setb(sc, EXCA_IOCTL, map->ioctlbits[io->width]);

 exca_setb(sc, EXCA_ADDRWIN_ENABLE, map->ioenable);
}
