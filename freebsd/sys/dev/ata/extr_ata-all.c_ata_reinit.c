
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_request {int result; int callout; } ;
struct TYPE_2__ {int (* unload ) (struct ata_request*) ;} ;
struct ata_channel {scalar_t__ state; int sim; int path; TYPE_1__ dma; struct ata_request* running; } ;
typedef int device_t ;


 int AC_BUS_RESET ;
 scalar_t__ ATA_ACTIVE ;
 scalar_t__ ATA_IDLE ;
 int ATA_RESET (int ) ;
 int ERESTART ;
 int TRUE ;
 int ata_cam_end_transaction (int ,struct ata_request*) ;
 int callout_stop (int *) ;
 struct ata_channel* device_get_softc (int ) ;
 int stub1 (struct ata_request*) ;
 int xpt_async (int ,int ,int *) ;
 int xpt_freeze_simq (int ,int) ;
 int xpt_release_simq (int ,int ) ;

int
ata_reinit(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);
    struct ata_request *request;

 xpt_freeze_simq(ch->sim, 1);
 if ((request = ch->running)) {
  ch->running = ((void*)0);
  if (ch->state == ATA_ACTIVE)
      ch->state = ATA_IDLE;
  callout_stop(&request->callout);
  if (ch->dma.unload)
      ch->dma.unload(request);
  request->result = ERESTART;
  ata_cam_end_transaction(dev, request);
 }

 ATA_RESET(dev);

 xpt_async(AC_BUS_RESET, ch->path, ((void*)0));
 xpt_release_simq(ch->sim, TRUE);
 return(0);
}
