
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_erom_iobus {scalar_t__ addr; scalar_t__ size; int mapped; scalar_t__ limit; scalar_t__ offset; } ;
struct bhnd_erom_io {int dummy; } ;
typedef scalar_t__ bhnd_size_t ;
typedef scalar_t__ bhnd_addr_t ;


 scalar_t__ BHND_ADDR_MAX ;
 scalar_t__ BUS_SPACE_MAXSIZE ;
 int EINVAL ;
 int ENXIO ;

__attribute__((used)) static int
bhnd_erom_iobus_map(struct bhnd_erom_io *eio, bhnd_addr_t addr,
    bhnd_size_t size)
{
 struct bhnd_erom_iobus *iobus = (struct bhnd_erom_iobus *)eio;


 if (size == 0)
  return (EINVAL);


 if (BHND_ADDR_MAX - size < addr)
  return (EINVAL);


 if (addr < iobus->addr || size > iobus->size)
  return (ENXIO);

 if (iobus->size - (addr - iobus->addr) < size)
  return (ENXIO);


 if ((addr - iobus->addr) > BUS_SPACE_MAXSIZE)
  return (ENXIO);

 if (size > BUS_SPACE_MAXSIZE)
  return (ENXIO);

 iobus->offset = addr - iobus->addr;
 iobus->limit = size;
 iobus->mapped = 1;

 return (0);
}
