
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct bhnd_erom_iobus {scalar_t__ limit; scalar_t__ offset; int bsh; int bst; int mapped; } ;
struct bhnd_erom_io {int dummy; } ;
typedef scalar_t__ bhnd_size_t ;


 int bus_space_read_1 (int ,int ,scalar_t__) ;
 int bus_space_read_2 (int ,int ,scalar_t__) ;
 int bus_space_read_4 (int ,int ,scalar_t__) ;
 int panic (char*,...) ;

__attribute__((used)) static uint32_t
bhnd_erom_iobus_read(struct bhnd_erom_io *eio, bhnd_size_t offset, u_int width)
{
 struct bhnd_erom_iobus *iobus = (struct bhnd_erom_iobus *)eio;

 if (!iobus->mapped)
  panic("no active mapping");

 if (iobus->limit < width || iobus->limit - width < offset)
  panic("invalid offset %#jx", offset);

 switch (width) {
 case 1:
  return (bus_space_read_1(iobus->bst, iobus->bsh,
      iobus->offset + offset));
 case 2:
  return (bus_space_read_2(iobus->bst, iobus->bsh,
      iobus->offset + offset));
 case 4:
  return (bus_space_read_4(iobus->bst, iobus->bsh,
      iobus->offset + offset));
 default:
  panic("invalid width %u", width);
 }
}
