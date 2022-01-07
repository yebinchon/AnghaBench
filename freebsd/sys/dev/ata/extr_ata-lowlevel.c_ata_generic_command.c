
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int command; } ;
struct TYPE_5__ {scalar_t__ ccb; } ;
struct TYPE_8__ {TYPE_3__ ata; TYPE_1__ atapi; } ;
struct ata_request {int flags; int transfersize; TYPE_4__ u; int parent; int unit; } ;
struct TYPE_6__ {int (* tf_write ) (struct ata_request*) ;} ;
struct ata_channel {TYPE_2__ hw; } ;
typedef int int16_t ;


 int ATAPI_P_CMDOUT ;
 int ATA_A_4BIT ;
 int ATA_COMMAND ;
 int ATA_CONTROL ;
 int ATA_CYL_LSB ;
 int ATA_CYL_MSB ;
 int ATA_DATA ;
 int ATA_DEV (int ) ;
 int ATA_DRIVE ;
 int ATA_D_IBM ;
 int ATA_D_LBA ;
 int ATA_FEATURE ;
 int ATA_F_DMA ;
 int ATA_IDX_INB (struct ata_channel*,int ) ;
 int ATA_IDX_OUTB (struct ata_channel*,int ,int) ;
 int ATA_IDX_OUTSW_STRM (struct ata_channel*,int ,int *,int) ;
 int ATA_IREASON ;
 int ATA_I_CMD ;
 int ATA_I_IN ;
 int ATA_PACKET_CMD ;
 int ATA_R_ATAPI ;
 int ATA_R_ATAPI16 ;
 int ATA_R_ATAPI_INTR ;
 int ATA_R_DMA ;
 int ATA_R_TIMEOUT ;
 int ATA_STATUS ;
 int ATA_S_BUSY ;
 int ATA_S_DRQ ;
 int DELAY (int) ;
 int ata_wait (struct ata_channel*,int ,int ) ;
 struct ata_channel* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int stub1 (struct ata_request*) ;

int
ata_generic_command(struct ata_request *request)
{
    struct ata_channel *ch = device_get_softc(request->parent);


    ATA_IDX_OUTB(ch, ATA_DRIVE, ATA_D_IBM | ATA_D_LBA | ATA_DEV(request->unit));


    if (ata_wait(ch, request->unit, 0) < 0) {
 device_printf(request->parent, "timeout waiting to issue command\n");
 request->flags |= ATA_R_TIMEOUT;
 return (-1);
    }


    ATA_IDX_OUTB(ch, ATA_CONTROL, ATA_A_4BIT);

    if (request->flags & ATA_R_ATAPI) {
 int timeout = 5000;
 int res;


 if (request->flags & ATA_R_DMA) {
     ATA_IDX_OUTB(ch, ATA_FEATURE, ATA_F_DMA);
     ATA_IDX_OUTB(ch, ATA_CYL_LSB, 0);
     ATA_IDX_OUTB(ch, ATA_CYL_MSB, 0);
 }
 else {
     ATA_IDX_OUTB(ch, ATA_FEATURE, 0);
     ATA_IDX_OUTB(ch, ATA_CYL_LSB, request->transfersize);
     ATA_IDX_OUTB(ch, ATA_CYL_MSB, request->transfersize >> 8);
 }
 ATA_IDX_OUTB(ch, ATA_COMMAND, ATA_PACKET_CMD);


 if (request->flags & ATA_R_ATAPI_INTR)
     return (0);


 res = ata_wait(ch, request->unit, 0);
 if (res != 0) {
     if (res < 0) {
      device_printf(request->parent,
   "timeout waiting for PACKET command\n");
      request->flags |= ATA_R_TIMEOUT;
     }
     return (-1);
 }

 while (timeout--) {
     int reason = ATA_IDX_INB(ch, ATA_IREASON);
     int status = ATA_IDX_INB(ch, ATA_STATUS);

     if (((reason & (ATA_I_CMD | ATA_I_IN)) |
   (status & (ATA_S_DRQ | ATA_S_BUSY))) == ATAPI_P_CMDOUT)
  break;
     DELAY(20);
 }
 if (timeout <= 0) {
     device_printf(request->parent,
  "timeout waiting for ATAPI ready\n");
     request->flags |= ATA_R_TIMEOUT;
     return (-1);
 }


 DELAY(10);


 ATA_IDX_OUTSW_STRM(ch, ATA_DATA, (int16_t *)request->u.atapi.ccb,
      (request->flags & ATA_R_ATAPI16) ? 8 : 6);
    }
    else {
 ch->hw.tf_write(request);


 ATA_IDX_OUTB(ch, ATA_COMMAND, request->u.ata.command);
    }
    return (0);
}
