
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_ud_param {int qkey; int qp_num; int ah_attr; scalar_t__ private_data_len; int private_data; } ;
struct rdma_ucm_ud_param {int qkey; int qp_num; int ah_attr; scalar_t__ private_data_len; int private_data; } ;


 int ib_copy_ah_attr_to_user (int *,int *) ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static void ucma_copy_ud_event(struct rdma_ucm_ud_param *dst,
          struct rdma_ud_param *src)
{
 if (src->private_data_len)
  memcpy(dst->private_data, src->private_data,
         src->private_data_len);
 dst->private_data_len = src->private_data_len;
 ib_copy_ah_attr_to_user(&dst->ah_attr, &src->ah_attr);
 dst->qp_num = src->qp_num;
 dst->qkey = src->qkey;
}
