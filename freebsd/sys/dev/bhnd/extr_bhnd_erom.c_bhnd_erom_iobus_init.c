
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fini; int read; int tell; int map; } ;
struct bhnd_erom_iobus {int mapped; int bsh; int bst; int size; int addr; TYPE_1__ eio; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef int bhnd_size_t ;
typedef int bhnd_addr_t ;


 int bhnd_erom_iobus_map ;
 int bhnd_erom_iobus_read ;
 int bhnd_erom_iobus_tell ;

int
bhnd_erom_iobus_init(struct bhnd_erom_iobus *iobus, bhnd_addr_t addr,
    bhnd_size_t size, bus_space_tag_t bst, bus_space_handle_t bsh)
{
 iobus->eio.map = bhnd_erom_iobus_map;
 iobus->eio.tell = bhnd_erom_iobus_tell;
 iobus->eio.read = bhnd_erom_iobus_read;
 iobus->eio.fini = ((void*)0);

 iobus->addr = addr;
 iobus->size = size;
 iobus->bst = bst;
 iobus->bsh = bsh;
 iobus->mapped = 0;

 return (0);
}
