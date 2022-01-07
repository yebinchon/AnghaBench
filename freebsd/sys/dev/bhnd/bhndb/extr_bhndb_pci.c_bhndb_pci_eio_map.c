
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_pci_eio {int mapped; scalar_t__ size; scalar_t__ addr; } ;
struct bhnd_erom_io {int dummy; } ;
typedef scalar_t__ bhnd_size_t ;
typedef scalar_t__ bhnd_addr_t ;


 scalar_t__ BHND_ADDR_MAX ;
 int EINVAL ;

__attribute__((used)) static int
bhndb_pci_eio_map(struct bhnd_erom_io *eio, bhnd_addr_t addr,
    bhnd_size_t size)
{
 struct bhndb_pci_eio *pio = (struct bhndb_pci_eio *)eio;

 if (BHND_ADDR_MAX - addr < size)
  return (EINVAL);

 pio->addr = addr;
 pio->size = size;
 pio->mapped = 1;

 return (0);
}
