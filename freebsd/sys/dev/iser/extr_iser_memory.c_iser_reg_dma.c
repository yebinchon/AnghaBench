
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_3__ {int addr; int length; int lkey; } ;
struct iser_mem_reg {TYPE_1__ sge; int rkey; } ;
struct iser_device {int ib_device; TYPE_2__* mr; } ;
struct iser_data_buf {struct scatterlist* sgl; } ;
struct TYPE_4__ {int rkey; int lkey; } ;


 int ib_sg_dma_address (int ,struct scatterlist*) ;
 int ib_sg_dma_len (int ,struct scatterlist*) ;

__attribute__((used)) static int
iser_reg_dma(struct iser_device *device, struct iser_data_buf *mem,
      struct iser_mem_reg *reg)
{
 struct scatterlist *sg = mem->sgl;

 reg->sge.lkey = device->mr->lkey;
 reg->rkey = device->mr->rkey;
 reg->sge.length = ib_sg_dma_len(device->ib_device, &sg[0]);
 reg->sge.addr = ib_sg_dma_address(device->ib_device, &sg[0]);

 return (0);
}
