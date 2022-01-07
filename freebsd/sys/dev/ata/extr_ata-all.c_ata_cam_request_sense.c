
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {size_t target_id; int timeout; } ;
struct TYPE_9__ {int sense_len; int sense_data; } ;
union ccb {TYPE_5__ ccb_h; TYPE_3__ csio; } ;
struct TYPE_7__ {int * ccb; } ;
struct TYPE_8__ {TYPE_1__ atapi; } ;
struct ata_request {size_t unit; int timeout; union ccb* ccb; int callout; scalar_t__ retries; int bytecount; int transfersize; int flags; TYPE_2__ u; void* data; int parent; int * dev; } ;
struct TYPE_12__ {scalar_t__ (* begin_transaction ) (struct ata_request*) ;} ;
struct ata_channel {int requestsense; int state; struct ata_request* running; TYPE_6__ hw; int state_mtx; TYPE_4__* curr; } ;
typedef int device_t ;
struct TYPE_10__ {int atapi; scalar_t__ mode; int bytecount; } ;


 int ATAPI_REQUEST_SENSE ;
 int ATA_ACTIVE ;
 scalar_t__ ATA_DMA ;
 int ATA_IDLE ;
 scalar_t__ ATA_OP_FINISHED ;
 int ATA_R_ATAPI ;
 int ATA_R_ATAPI16 ;
 int ATA_R_DMA ;
 int ATA_R_READ ;
 int CALLOUT_RETURNUNLOCKED ;
 int ata_cam_end_transaction (int ,struct ata_request*) ;
 int bzero (struct ata_request*,int) ;
 int callout_init_mtx (int *,int *,int ) ;
 struct ata_channel* device_get_softc (int ) ;
 int min (int ,int ) ;
 scalar_t__ stub1 (struct ata_request*) ;

__attribute__((used)) static void
ata_cam_request_sense(device_t dev, struct ata_request *request)
{
 struct ata_channel *ch = device_get_softc(dev);
 union ccb *ccb = request->ccb;

 ch->requestsense = 1;

 bzero(request, sizeof(*request));
 request->dev = ((void*)0);
 request->parent = dev;
 request->unit = ccb->ccb_h.target_id;
 request->data = (void *)&ccb->csio.sense_data;
 request->bytecount = ccb->csio.sense_len;
 request->u.atapi.ccb[0] = ATAPI_REQUEST_SENSE;
 request->u.atapi.ccb[4] = ccb->csio.sense_len;
 request->flags |= ATA_R_ATAPI;
 if (ch->curr[ccb->ccb_h.target_id].atapi == 16)
  request->flags |= ATA_R_ATAPI16;
 if (ch->curr[ccb->ccb_h.target_id].mode >= ATA_DMA)
  request->flags |= ATA_R_DMA;
 request->flags |= ATA_R_READ;
 request->transfersize = min(request->bytecount,
     ch->curr[ccb->ccb_h.target_id].bytecount);
 request->retries = 0;
 request->timeout = (ccb->ccb_h.timeout + 999) / 1000;
 callout_init_mtx(&request->callout, &ch->state_mtx, CALLOUT_RETURNUNLOCKED);
 request->ccb = ccb;

 ch->running = request;
 ch->state = ATA_ACTIVE;
 if (ch->hw.begin_transaction(request) == ATA_OP_FINISHED) {
  ch->running = ((void*)0);
  ch->state = ATA_IDLE;
  ata_cam_end_transaction(dev, request);
  return;
 }
}
