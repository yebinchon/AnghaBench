
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {int len; void* flags; void* addr; } ;
typedef TYPE_1__ sgt_t ;
struct TYPE_11__ {void* sg_chain_dma; TYPE_1__* sg_chain_virt; } ;
typedef TYPE_2__ rcb_t ;
struct TYPE_12__ {int iu_length; } ;
typedef TYPE_3__ iu_header_t ;
typedef int boolean_t ;


 int DBG_FUNC (char*) ;
 int DBG_IO (char*,int) ;
 void* OS_GET_IO_SG_ADDR (TYPE_2__*,int) ;
 int OS_GET_IO_SG_COUNT (TYPE_2__*) ;
 void* OS_GET_IO_SG_LEN (TYPE_2__*,int) ;
 void* SG_FLAG_CHAIN ;
 void* SG_FLAG_LAST ;
 int pqisrc_embedded_sgl_count (int) ;

__attribute__((used)) static
boolean_t pqisrc_build_sgl(sgt_t *sg_array, rcb_t *rcb, iu_header_t *iu_hdr,
   uint32_t num_elem_alloted)
{
 uint32_t i;
 uint32_t num_sg = OS_GET_IO_SG_COUNT(rcb);
 sgt_t *sgt = sg_array;
 sgt_t *sg_chain = ((void*)0);
 boolean_t partial = 0;

 DBG_FUNC(" IN ");

 DBG_IO("SGL_Count :%d",num_sg);
 if (0 == num_sg) {
  goto out;
 }

 if (num_sg <= pqisrc_embedded_sgl_count(num_elem_alloted)) {
  for (i = 0; i < num_sg; i++, sgt++) {
                        sgt->addr= OS_GET_IO_SG_ADDR(rcb,i);
                        sgt->len= OS_GET_IO_SG_LEN(rcb,i);
                        sgt->flags= 0;
                }

  sg_array[num_sg - 1].flags = SG_FLAG_LAST;
 } else {



  sg_chain = rcb->sg_chain_virt;
  sgt->addr = rcb->sg_chain_dma;
  sgt->len = num_sg * sizeof(sgt_t);
  sgt->flags = SG_FLAG_CHAIN;

  sgt = sg_chain;
  for (i = 0; i < num_sg; i++, sgt++) {
   sgt->addr = OS_GET_IO_SG_ADDR(rcb,i);
   sgt->len = OS_GET_IO_SG_LEN(rcb,i);
   sgt->flags = 0;
  }

  sg_chain[num_sg - 1].flags = SG_FLAG_LAST;
  num_sg = 1;
  partial = 1;

 }
out:
 iu_hdr->iu_length = num_sg * sizeof(sgt_t);
 DBG_FUNC(" OUT ");
 return partial;

}
