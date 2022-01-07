
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct ib_mr {unsigned int page_size; TYPE_1__* device; } ;
struct TYPE_2__ {int (* map_mr_sg ) (struct ib_mr*,struct scatterlist*,int,unsigned int*) ;} ;


 int ENOSYS ;
 int stub1 (struct ib_mr*,struct scatterlist*,int,unsigned int*) ;
 scalar_t__ unlikely (int) ;

int ib_map_mr_sg(struct ib_mr *mr, struct scatterlist *sg, int sg_nents,
   unsigned int *sg_offset, unsigned int page_size)
{
 if (unlikely(!mr->device->map_mr_sg))
  return -ENOSYS;

 mr->page_size = page_size;

 return mr->device->map_mr_sg(mr, sg, sg_nents, sg_offset);
}
