
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct scb {struct hardware_scb* hscb; } ;
struct TYPE_3__ {int* cdb; } ;
struct TYPE_4__ {TYPE_1__ idata; } ;
struct hardware_scb {int control; int scsiid; int lun; int cdb_len; int sgptr; int datacnt; int dataptr; TYPE_2__ shared_data; } ;


 int SCB_GET_TAG (struct scb*) ;
 int ahd_dump_sglist (struct scb*) ;
 int aic_le32toh (int ) ;
 int aic_le64toh (int ) ;
 int printf (char*,...) ;

void
ahd_print_scb(struct scb *scb)
{
 struct hardware_scb *hscb;
 int i;

 hscb = scb->hscb;
 printf("scb:%p control:0x%x scsiid:0x%x lun:%d cdb_len:%d\n",
        (void *)scb,
        hscb->control,
        hscb->scsiid,
        hscb->lun,
        hscb->cdb_len);
 printf("Shared Data: ");
 for (i = 0; i < sizeof(hscb->shared_data.idata.cdb); i++)
  printf("%#02x", hscb->shared_data.idata.cdb[i]);
 printf("        dataptr:%#x%x datacnt:%#x sgptr:%#x tag:%#x\n",
        (uint32_t)((aic_le64toh(hscb->dataptr) >> 32) & 0xFFFFFFFF),
        (uint32_t)(aic_le64toh(hscb->dataptr) & 0xFFFFFFFF),
        aic_le32toh(hscb->datacnt),
        aic_le32toh(hscb->sgptr),
        SCB_GET_TAG(scb));
 ahd_dump_sglist(scb);
}
