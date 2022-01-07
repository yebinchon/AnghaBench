
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_erom_iobus {int limit; scalar_t__ offset; scalar_t__ addr; int mapped; } ;
struct bhnd_erom_io {int dummy; } ;
typedef int bhnd_size_t ;
typedef scalar_t__ bhnd_addr_t ;


 int ENXIO ;

__attribute__((used)) static int
bhnd_erom_iobus_tell(struct bhnd_erom_io *eio, bhnd_addr_t *addr,
    bhnd_size_t *size)
{
 struct bhnd_erom_iobus *iobus = (struct bhnd_erom_iobus *)eio;

 if (!iobus->mapped)
  return (ENXIO);

 *addr = iobus->addr + iobus->offset;
 *size = iobus->limit;

 return (0);
}
