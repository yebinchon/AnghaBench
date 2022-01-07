
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scb {int sg_list_phys; struct ahc_dma_seg* sg_list; } ;
struct ahc_dma_seg {int dummy; } ;



__attribute__((used)) static __inline struct ahc_dma_seg *
ahc_sg_bus_to_virt(struct scb *scb, uint32_t sg_busaddr)
{
 int sg_index;

 sg_index = (sg_busaddr - scb->sg_list_phys)/sizeof(struct ahc_dma_seg);

 sg_index++;

 return (&scb->sg_list[sg_index]);
}
