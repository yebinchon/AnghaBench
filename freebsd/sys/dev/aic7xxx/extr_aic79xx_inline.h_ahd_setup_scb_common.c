
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scb {int flags; int sense_busaddr; TYPE_4__* hscb; scalar_t__ crc_retry_count; } ;
struct ahd_softc {int dummy; } ;
struct TYPE_5__ {int sense_addr; } ;
struct TYPE_6__ {TYPE_1__ cdb_plus_saddr; } ;
struct TYPE_7__ {TYPE_2__ idata; } ;
struct TYPE_8__ {int task_attribute; int control; int cdb_len; TYPE_3__ shared_data; } ;


 int MAX_CDB_LEN_WITH_SENSE_ADDR ;
 int SCB_CDB_LEN_PTR ;
 int SCB_PACKETIZED ;
 int SCB_TAG_TYPE ;
 int SCB_XFERLEN_ODD ;
 int aic_get_transfer_length (struct scb*) ;
 int aic_htole32 (int ) ;

__attribute__((used)) static __inline void
ahd_setup_scb_common(struct ahd_softc *ahd, struct scb *scb)
{

 scb->crc_retry_count = 0;
 if ((scb->flags & SCB_PACKETIZED) != 0) {

  scb->hscb->task_attribute = scb->hscb->control & SCB_TAG_TYPE;
 } else {
  if (aic_get_transfer_length(scb) & 0x01)
   scb->hscb->task_attribute = SCB_XFERLEN_ODD;
  else
   scb->hscb->task_attribute = 0;
 }

 if (scb->hscb->cdb_len <= MAX_CDB_LEN_WITH_SENSE_ADDR
  || (scb->hscb->cdb_len & SCB_CDB_LEN_PTR) != 0)
  scb->hscb->shared_data.idata.cdb_plus_saddr.sense_addr =
      aic_htole32(scb->sense_busaddr);
}
