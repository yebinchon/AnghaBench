
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * data_map; } ;
struct siis_slot {TYPE_2__ dma; int timeout; } ;
struct TYPE_3__ {int data_tag; } ;
struct siis_channel {TYPE_1__ dma; struct siis_slot* slot; } ;
typedef int device_t ;


 int SIIS_MAX_SLOTS ;
 int bus_dmamap_destroy (int ,int *) ;
 int callout_drain (int *) ;
 struct siis_channel* device_get_softc (int ) ;

__attribute__((used)) static void
siis_slotsfree(device_t dev)
{
 struct siis_channel *ch = device_get_softc(dev);
 int i;


 for (i = 0; i < SIIS_MAX_SLOTS; i++) {
  struct siis_slot *slot = &ch->slot[i];

  callout_drain(&slot->timeout);
  if (slot->dma.data_map) {
   bus_dmamap_destroy(ch->dma.data_tag, slot->dma.data_map);
   slot->dma.data_map = ((void*)0);
  }
 }
}
