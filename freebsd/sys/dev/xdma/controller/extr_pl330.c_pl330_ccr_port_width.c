
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xdma_sglist {int src_width; int dst_width; } ;


 int CCR_DST_BURST_SIZE_1 ;
 int CCR_DST_BURST_SIZE_2 ;
 int CCR_DST_BURST_SIZE_4 ;
 int CCR_SRC_BURST_SIZE_1 ;
 int CCR_SRC_BURST_SIZE_2 ;
 int CCR_SRC_BURST_SIZE_4 ;

__attribute__((used)) static int
pl330_ccr_port_width(struct xdma_sglist *sg, uint32_t *addr)
{
 uint32_t reg;

 reg = 0;

 switch (sg->src_width) {
 case 1:
  reg |= CCR_SRC_BURST_SIZE_1;
  break;
 case 2:
  reg |= CCR_SRC_BURST_SIZE_2;
  break;
 case 4:
  reg |= CCR_SRC_BURST_SIZE_4;
  break;
 default:
  return (-1);
 }

 switch (sg->dst_width) {
 case 1:
  reg |= CCR_DST_BURST_SIZE_1;
  break;
 case 2:
  reg |= CCR_DST_BURST_SIZE_2;
  break;
 case 4:
  reg |= CCR_DST_BURST_SIZE_4;
  break;
 default:
  return (-1);
 }

 *addr |= reg;

 return (0);
}
