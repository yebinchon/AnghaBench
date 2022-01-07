
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_request {int flags; int parent; } ;
struct TYPE_2__ {int (* unload ) (struct ata_request*) ;} ;
struct ata_channel {scalar_t__ state; int state_mtx; int dev; int * running; TYPE_1__ dma; } ;


 scalar_t__ ATA_ACTIVE ;
 int ATA_DEBUG_RQ (struct ata_request*,char*) ;
 scalar_t__ ATA_IDLE ;
 int ATA_R_TIMEOUT ;
 int ata_cam_end_transaction (int ,struct ata_request*) ;
 struct ata_channel* device_get_softc (int ) ;
 int mtx_unlock (int *) ;
 int stub1 (struct ata_request*) ;

void
ata_timeout(struct ata_request *request)
{
 struct ata_channel *ch;

 ch = device_get_softc(request->parent);

 ATA_DEBUG_RQ(request, "timeout");







 if (ch->state == ATA_ACTIVE) {
  request->flags |= ATA_R_TIMEOUT;
  if (ch->dma.unload)
   ch->dma.unload(request);
  ch->running = ((void*)0);
  ch->state = ATA_IDLE;
  ata_cam_end_transaction(ch->dev, request);
 }
 mtx_unlock(&ch->state_mtx);
}
