
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scb {int sg_count; TYPE_2__* sg_list; struct hardware_scb* hscb; } ;
struct TYPE_3__ {int* cdb; } ;
struct hardware_scb {int control; int scsiid; int lun; int cdb_len; int tag; int sgptr; int datacnt; int dataptr; TYPE_1__ shared_data; } ;
struct TYPE_4__ {int addr; int len; } ;


 int SG_HIGH_ADDR_BITS ;
 int aic_le32toh (int ) ;
 int printf (char*,...) ;

void
ahc_print_scb(struct scb *scb)
{
 int i;

 struct hardware_scb *hscb = scb->hscb;

 printf("scb:%p control:0x%x scsiid:0x%x lun:%d cdb_len:%d\n",
        (void *)scb,
        hscb->control,
        hscb->scsiid,
        hscb->lun,
        hscb->cdb_len);
 printf("Shared Data: ");
 for (i = 0; i < sizeof(hscb->shared_data.cdb); i++)
  printf("%#02x", hscb->shared_data.cdb[i]);
 printf("        dataptr:%#x datacnt:%#x sgptr:%#x tag:%#x\n",
  aic_le32toh(hscb->dataptr),
  aic_le32toh(hscb->datacnt),
  aic_le32toh(hscb->sgptr),
  hscb->tag);
 if (scb->sg_count > 0) {
  for (i = 0; i < scb->sg_count; i++) {
   printf("sg[%d] - Addr 0x%x%x : Length %d\n",
          i,
          (aic_le32toh(scb->sg_list[i].len) >> 24
           & SG_HIGH_ADDR_BITS),
          aic_le32toh(scb->sg_list[i].addr),
          aic_le32toh(scb->sg_list[i].len));
  }
 }
}
