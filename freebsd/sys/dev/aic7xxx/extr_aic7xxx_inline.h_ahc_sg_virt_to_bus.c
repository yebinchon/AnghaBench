
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct scb {scalar_t__ sg_list_phys; struct ahc_dma_seg* sg_list; } ;
struct ahc_dma_seg {int dummy; } ;



__attribute__((used)) static __inline uint32_t
ahc_sg_virt_to_bus(struct scb *scb, struct ahc_dma_seg *sg)
{
 int sg_index;


 sg_index = sg - &scb->sg_list[1];

 return (scb->sg_list_phys + (sg_index * sizeof(*scb->sg_list)));
}
