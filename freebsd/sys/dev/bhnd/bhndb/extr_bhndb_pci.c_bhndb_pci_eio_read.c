
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct bhndb_pci_eio {scalar_t__ size; int addr; int probe; int mapped; } ;
struct bhnd_erom_io {int dummy; } ;
typedef scalar_t__ bhnd_size_t ;


 int bhndb_pci_probe_read (int ,int ,scalar_t__,scalar_t__) ;
 int panic (char*,...) ;

__attribute__((used)) static uint32_t
bhndb_pci_eio_read(struct bhnd_erom_io *eio, bhnd_size_t offset, u_int width)
{
 struct bhndb_pci_eio *pio = (struct bhndb_pci_eio *)eio;


 if (!pio->mapped)
  panic("no active mapping");


 if (offset > pio->size ||
     width > pio->size ||
     pio->size - offset < width)
 {
  panic("invalid offset %#jx", offset);
 }

 return (bhndb_pci_probe_read(pio->probe, pio->addr, offset, width));
}
