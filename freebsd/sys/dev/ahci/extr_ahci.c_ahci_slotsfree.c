
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * data_map; } ;
struct ahci_slot {TYPE_2__ dma; int timeout; } ;
struct TYPE_3__ {int data_tag; } ;
struct ahci_channel {int numslots; TYPE_1__ dma; struct ahci_slot* slot; } ;
typedef int device_t ;


 int bus_dmamap_destroy (int ,int *) ;
 int callout_drain (int *) ;
 struct ahci_channel* device_get_softc (int ) ;

__attribute__((used)) static void
ahci_slotsfree(device_t dev)
{
 struct ahci_channel *ch = device_get_softc(dev);
 int i;


 for (i = 0; i < ch->numslots; i++) {
  struct ahci_slot *slot = &ch->slot[i];

  callout_drain(&slot->timeout);
  if (slot->dma.data_map) {
   bus_dmamap_destroy(ch->dma.data_tag, slot->dma.data_map);
   slot->dma.data_map = ((void*)0);
  }
 }
}
