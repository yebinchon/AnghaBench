
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_pci_eio {int size; int addr; int mapped; } ;
struct bhnd_erom_io {int dummy; } ;
typedef int bhnd_size_t ;
typedef int bhnd_addr_t ;


 int ENXIO ;

__attribute__((used)) static int
bhndb_pci_eio_tell(struct bhnd_erom_io *eio, bhnd_addr_t *addr,
    bhnd_size_t *size)
{
 struct bhndb_pci_eio *pio = (struct bhndb_pci_eio *)eio;

 if (!pio->mapped)
  return (ENXIO);

 *addr = pio->addr;
 *size = pio->size;

 return (0);
}
