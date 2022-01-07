
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iser_mem_reg {int * mem_h; } ;
struct icl_iser_pdu {TYPE_1__* iser_conn; struct iser_mem_reg* rdma_reg; } ;
typedef enum iser_data_dir { ____Placeholder_iser_data_dir } iser_data_dir ;
struct TYPE_2__ {int ib_conn; } ;


 int iser_reg_desc_put (int *,int *) ;

void
iser_unreg_rdma_mem(struct icl_iser_pdu *iser_pdu,
      enum iser_data_dir cmd_dir)
{
 struct iser_mem_reg *reg = &iser_pdu->rdma_reg[cmd_dir];

 if (!reg->mem_h)
  return;

 iser_reg_desc_put(&iser_pdu->iser_conn->ib_conn,
     reg->mem_h);
 reg->mem_h = ((void*)0);
}
