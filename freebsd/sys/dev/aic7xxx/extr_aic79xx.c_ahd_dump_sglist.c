
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct scb {int sg_count; scalar_t__ sg_list; TYPE_1__* ahd_softc; } ;
struct ahd_dma_seg {int addr; int len; } ;
struct ahd_dma64_seg {int len; int addr; } ;
struct TYPE_2__ {int flags; } ;


 int AHD_64BIT_ADDRESSING ;
 int AHD_DMA_LAST_SEG ;
 int AHD_SG_HIGH_ADDR_MASK ;
 int AHD_SG_LEN_MASK ;
 int aic_le32toh (int ) ;
 int aic_le64toh (int ) ;
 int printf (char*,int,int,int,int,char*) ;

void
ahd_dump_sglist(struct scb *scb)
{
 int i;

 if (scb->sg_count > 0) {
  if ((scb->ahd_softc->flags & AHD_64BIT_ADDRESSING) != 0) {
   struct ahd_dma64_seg *sg_list;

   sg_list = (struct ahd_dma64_seg*)scb->sg_list;
   for (i = 0; i < scb->sg_count; i++) {
    uint64_t addr;

    addr = aic_le64toh(sg_list[i].addr);
    printf("sg[%d] - Addr 0x%x%x : Length %d%s\n",
           i,
           (uint32_t)((addr >> 32) & 0xFFFFFFFF),
           (uint32_t)(addr & 0xFFFFFFFF),
           sg_list[i].len & AHD_SG_LEN_MASK,
           (sg_list[i].len & AHD_DMA_LAST_SEG)
         ? " Last" : "");
   }
  } else {
   struct ahd_dma_seg *sg_list;

   sg_list = (struct ahd_dma_seg*)scb->sg_list;
   for (i = 0; i < scb->sg_count; i++) {
    uint32_t len;

    len = aic_le32toh(sg_list[i].len);
    printf("sg[%d] - Addr 0x%x%x : Length %d%s\n",
           i,
           (len & AHD_SG_HIGH_ADDR_MASK) >> 24,
           aic_le32toh(sg_list[i].addr),
           len & AHD_SG_LEN_MASK,
           len & AHD_DMA_LAST_SEG ? " Last" : "");
   }
  }
 }
}
