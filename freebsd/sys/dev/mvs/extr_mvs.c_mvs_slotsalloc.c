
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int data_map; } ;
struct mvs_slot {int slot; TYPE_2__ dma; int timeout; int * ccb; int state; int dev; } ;
struct TYPE_3__ {int data_tag; } ;
struct mvs_channel {int dev; TYPE_1__ dma; int mtx; struct mvs_slot* slot; } ;
typedef int device_t ;


 int MVS_MAX_SLOTS ;
 int MVS_SLOT_EMPTY ;
 scalar_t__ bus_dmamap_create (int ,int ,int *) ;
 int bzero (struct mvs_slot*,int) ;
 int callout_init_mtx (int *,int *,int ) ;
 struct mvs_channel* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
mvs_slotsalloc(device_t dev)
{
 struct mvs_channel *ch = device_get_softc(dev);
 int i;


 bzero(ch->slot, sizeof(ch->slot));
 for (i = 0; i < MVS_MAX_SLOTS; i++) {
  struct mvs_slot *slot = &ch->slot[i];

  slot->dev = dev;
  slot->slot = i;
  slot->state = MVS_SLOT_EMPTY;
  slot->ccb = ((void*)0);
  callout_init_mtx(&slot->timeout, &ch->mtx, 0);

  if (bus_dmamap_create(ch->dma.data_tag, 0, &slot->dma.data_map))
   device_printf(ch->dev, "FAILURE - create data_map\n");
 }
}
