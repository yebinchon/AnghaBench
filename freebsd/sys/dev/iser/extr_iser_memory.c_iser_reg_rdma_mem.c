
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iser_mem_reg {struct fast_reg_descriptor* mem_h; } ;
struct iser_device {struct ib_device* ib_device; } ;
struct iser_data_buf {int dma_nents; } ;
struct icl_iser_pdu {struct iser_mem_reg* rdma_reg; struct iser_data_buf* data; TYPE_1__* iser_conn; } ;
struct ib_device {int dummy; } ;
struct ib_conn {struct iser_device* device; } ;
struct fast_reg_descriptor {int rsc; } ;
typedef enum iser_data_dir { ____Placeholder_iser_data_dir } iser_data_dir ;
struct TYPE_2__ {struct ib_conn ib_conn; } ;


 int ISER_ERR (char*) ;
 int iser_data_buf_aligned_len (struct iser_data_buf*,struct ib_device*) ;
 int iser_fast_reg_mr (struct icl_iser_pdu*,struct iser_data_buf*,int *,struct iser_mem_reg*) ;
 struct fast_reg_descriptor* iser_reg_desc_get (struct ib_conn*) ;
 int iser_reg_desc_put (struct ib_conn*,struct fast_reg_descriptor*) ;

int
iser_reg_rdma_mem(struct icl_iser_pdu *iser_pdu,
    enum iser_data_dir cmd_dir)
{
 struct ib_conn *ib_conn = &iser_pdu->iser_conn->ib_conn;
 struct iser_device *device = ib_conn->device;
 struct ib_device *ibdev = device->ib_device;
 struct iser_data_buf *mem = &iser_pdu->data[cmd_dir];
 struct iser_mem_reg *mem_reg = &iser_pdu->rdma_reg[cmd_dir];
 struct fast_reg_descriptor *desc = ((void*)0);
 int err, aligned_len;

 aligned_len = iser_data_buf_aligned_len(mem, ibdev);
 if (aligned_len != mem->dma_nents) {
  ISER_ERR("bounce buffer is not supported");
  return 1;
 }

 if (mem->dma_nents != 1) {
  desc = iser_reg_desc_get(ib_conn);
  mem_reg->mem_h = desc;
 }

 err = iser_fast_reg_mr(iser_pdu, mem, desc ? &desc->rsc : ((void*)0),
           mem_reg);
 if (err)
  goto err_reg;

 return (0);

err_reg:
 if (desc)
  iser_reg_desc_put(ib_conn, desc);

 return (err);
}
