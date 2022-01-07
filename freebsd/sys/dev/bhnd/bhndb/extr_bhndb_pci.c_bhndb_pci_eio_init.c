
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhndb_pci_probe {int dummy; } ;
struct TYPE_2__ {int * fini; int read; int tell; int map; } ;
struct bhndb_pci_eio {int mapped; struct bhndb_pci_probe* probe; scalar_t__ size; scalar_t__ addr; TYPE_1__ eio; } ;


 int bhndb_pci_eio_map ;
 int bhndb_pci_eio_read ;
 int bhndb_pci_eio_tell ;
 int memset (struct bhndb_pci_eio*,int ,int) ;

__attribute__((used)) static void
bhndb_pci_eio_init(struct bhndb_pci_eio *pio, struct bhndb_pci_probe *probe)
{
 memset(pio, 0, sizeof(*pio));

 pio->eio.map = bhndb_pci_eio_map;
 pio->eio.tell = bhndb_pci_eio_tell;
 pio->eio.read = bhndb_pci_eio_read;
 pio->eio.fini = ((void*)0);

 pio->mapped = 0;
 pio->addr = 0;
 pio->size = 0;
 pio->probe = probe;
}
