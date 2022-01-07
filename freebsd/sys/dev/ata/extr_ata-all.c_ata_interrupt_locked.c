
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_request {int dev; } ;
struct TYPE_2__ {scalar_t__ (* end_transaction ) (struct ata_request*) ;int (* status ) (int ) ;} ;
struct ata_channel {scalar_t__ state; int dev; struct ata_request* running; TYPE_1__ hw; } ;


 scalar_t__ ATA_ACTIVE ;
 int ATA_DEBUG_RQ (struct ata_request*,char*) ;
 scalar_t__ ATA_IDLE ;
 scalar_t__ ATA_OP_FINISHED ;
 int ata_cam_end_transaction (int ,struct ata_request*) ;
 int device_printf (int ,char*) ;
 int stub1 (int ) ;
 scalar_t__ stub2 (struct ata_request*) ;

__attribute__((used)) static void
ata_interrupt_locked(void *data)
{
 struct ata_channel *ch = (struct ata_channel *)data;
 struct ata_request *request;


 if (ch->hw.status && !ch->hw.status(ch->dev))
  return;


 if (!(request = ch->running))
  return;

 ATA_DEBUG_RQ(request, "interrupt");


 if (ch->state == ATA_IDLE) {
  device_printf(request->dev, "interrupt on idle channel ignored\n");
  return;
 }





 if (ch->hw.end_transaction(request) == ATA_OP_FINISHED) {
  ch->running = ((void*)0);
  if (ch->state == ATA_ACTIVE)
   ch->state = ATA_IDLE;
  ata_cam_end_transaction(ch->dev, request);
  return;
 }
}
