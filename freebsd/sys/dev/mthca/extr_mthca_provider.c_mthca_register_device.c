
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned long long uverbs_cmd_mask; int num_comp_vectors; int dev; int post_recv; int post_send; int req_notify_cq; int process_mad; int detach_mcast; int attach_mcast; int map_phys_fmr; int dealloc_fmr; int unmap_fmr; int alloc_fmr; int get_dev_fw_str; int get_port_immutable; int dereg_mr; int reg_user_mr; int get_dma_mr; int poll_cq; int destroy_cq; int resize_cq; int create_cq; int destroy_qp; int query_qp; int modify_qp; int create_qp; int post_srq_recv; int destroy_srq; int query_srq; int modify_srq; int create_srq; int destroy_ah; int query_ah; int create_ah; int dealloc_pd; int alloc_pd; int mmap; int dealloc_ucontext; int alloc_ucontext; int query_gid; int query_pkey; int modify_port; int modify_device; int query_port; int query_device; int * dma_device; int phys_port_cnt; int node_type; int uverbs_abi_ver; int owner; int name; } ;
struct TYPE_5__ {int num_ports; } ;
struct mthca_dev {int mthca_flags; TYPE_3__ ib_dev; int cap_mask_mutex; TYPE_2__* pdev; TYPE_1__ limits; } ;
struct TYPE_6__ {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int IB_DEVICE_NAME_MAX ;
 unsigned long long IB_USER_VERBS_CMD_ALLOC_PD ;
 unsigned long long IB_USER_VERBS_CMD_ATTACH_MCAST ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_CQ ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_QP ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_SRQ ;
 unsigned long long IB_USER_VERBS_CMD_DEALLOC_PD ;
 unsigned long long IB_USER_VERBS_CMD_DEREG_MR ;
 unsigned long long IB_USER_VERBS_CMD_DESTROY_CQ ;
 unsigned long long IB_USER_VERBS_CMD_DESTROY_QP ;
 unsigned long long IB_USER_VERBS_CMD_DESTROY_SRQ ;
 unsigned long long IB_USER_VERBS_CMD_DETACH_MCAST ;
 unsigned long long IB_USER_VERBS_CMD_GET_CONTEXT ;
 unsigned long long IB_USER_VERBS_CMD_MODIFY_QP ;
 unsigned long long IB_USER_VERBS_CMD_MODIFY_SRQ ;
 unsigned long long IB_USER_VERBS_CMD_QUERY_DEVICE ;
 unsigned long long IB_USER_VERBS_CMD_QUERY_PORT ;
 unsigned long long IB_USER_VERBS_CMD_QUERY_QP ;
 unsigned long long IB_USER_VERBS_CMD_QUERY_SRQ ;
 unsigned long long IB_USER_VERBS_CMD_REG_MR ;
 unsigned long long IB_USER_VERBS_CMD_RESIZE_CQ ;
 int MTHCA_FLAG_FMR ;
 int MTHCA_FLAG_SRQ ;
 int MTHCA_UVERBS_ABI_VERSION ;
 int RDMA_NODE_IB_CA ;
 int THIS_MODULE ;
 int device_create_file (int *,int ) ;
 int get_dev_fw_str ;
 int ib_register_device (TYPE_3__*,int *) ;
 int ib_unregister_device (TYPE_3__*) ;
 int mthca_ah_create ;
 int mthca_ah_destroy ;
 int mthca_ah_query ;
 int mthca_alloc_fmr ;
 int mthca_alloc_pd ;
 int mthca_alloc_ucontext ;
 int mthca_arbel_arm_cq ;
 int mthca_arbel_map_phys_fmr ;
 int mthca_arbel_post_receive ;
 int mthca_arbel_post_send ;
 int mthca_arbel_post_srq_recv ;
 int mthca_create_cq ;
 int mthca_create_qp ;
 int mthca_create_srq ;
 int mthca_dealloc_fmr ;
 int mthca_dealloc_pd ;
 int mthca_dealloc_ucontext ;
 int mthca_dereg_mr ;
 int mthca_destroy_cq ;
 int mthca_destroy_qp ;
 int mthca_destroy_srq ;
 int * mthca_dev_attributes ;
 int mthca_get_dma_mr ;
 int mthca_init_node_data (struct mthca_dev*) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;
 int mthca_mmap_uar ;
 int mthca_modify_device ;
 int mthca_modify_port ;
 int mthca_modify_qp ;
 int mthca_modify_srq ;
 int mthca_multicast_attach ;
 int mthca_multicast_detach ;
 int mthca_poll_cq ;
 int mthca_port_immutable ;
 int mthca_process_mad ;
 int mthca_query_device ;
 int mthca_query_gid ;
 int mthca_query_pkey ;
 int mthca_query_port ;
 int mthca_query_qp ;
 int mthca_query_srq ;
 int mthca_reg_user_mr ;
 int mthca_resize_cq ;
 int mthca_start_catas_poll (struct mthca_dev*) ;
 int mthca_tavor_arm_cq ;
 int mthca_tavor_map_phys_fmr ;
 int mthca_tavor_post_receive ;
 int mthca_tavor_post_send ;
 int mthca_tavor_post_srq_recv ;
 int mthca_unmap_fmr ;
 int mutex_init (int *) ;
 int strlcpy (int ,char*,int ) ;

int mthca_register_device(struct mthca_dev *dev)
{
 int ret;
 int i;

 ret = mthca_init_node_data(dev);
 if (ret)
  return ret;

 strlcpy(dev->ib_dev.name, "mthca%d", IB_DEVICE_NAME_MAX);
 dev->ib_dev.owner = THIS_MODULE;

 dev->ib_dev.uverbs_abi_ver = MTHCA_UVERBS_ABI_VERSION;
 dev->ib_dev.uverbs_cmd_mask =
  (1ull << IB_USER_VERBS_CMD_GET_CONTEXT) |
  (1ull << IB_USER_VERBS_CMD_QUERY_DEVICE) |
  (1ull << IB_USER_VERBS_CMD_QUERY_PORT) |
  (1ull << IB_USER_VERBS_CMD_ALLOC_PD) |
  (1ull << IB_USER_VERBS_CMD_DEALLOC_PD) |
  (1ull << IB_USER_VERBS_CMD_REG_MR) |
  (1ull << IB_USER_VERBS_CMD_DEREG_MR) |
  (1ull << IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL) |
  (1ull << IB_USER_VERBS_CMD_CREATE_CQ) |
  (1ull << IB_USER_VERBS_CMD_RESIZE_CQ) |
  (1ull << IB_USER_VERBS_CMD_DESTROY_CQ) |
  (1ull << IB_USER_VERBS_CMD_CREATE_QP) |
  (1ull << IB_USER_VERBS_CMD_QUERY_QP) |
  (1ull << IB_USER_VERBS_CMD_MODIFY_QP) |
  (1ull << IB_USER_VERBS_CMD_DESTROY_QP) |
  (1ull << IB_USER_VERBS_CMD_ATTACH_MCAST) |
  (1ull << IB_USER_VERBS_CMD_DETACH_MCAST);
 dev->ib_dev.node_type = RDMA_NODE_IB_CA;
 dev->ib_dev.phys_port_cnt = dev->limits.num_ports;
 dev->ib_dev.num_comp_vectors = 1;
 dev->ib_dev.dma_device = &dev->pdev->dev;
 dev->ib_dev.query_device = mthca_query_device;
 dev->ib_dev.query_port = mthca_query_port;
 dev->ib_dev.modify_device = mthca_modify_device;
 dev->ib_dev.modify_port = mthca_modify_port;
 dev->ib_dev.query_pkey = mthca_query_pkey;
 dev->ib_dev.query_gid = mthca_query_gid;
 dev->ib_dev.alloc_ucontext = mthca_alloc_ucontext;
 dev->ib_dev.dealloc_ucontext = mthca_dealloc_ucontext;
 dev->ib_dev.mmap = mthca_mmap_uar;
 dev->ib_dev.alloc_pd = mthca_alloc_pd;
 dev->ib_dev.dealloc_pd = mthca_dealloc_pd;
 dev->ib_dev.create_ah = mthca_ah_create;
 dev->ib_dev.query_ah = mthca_ah_query;
 dev->ib_dev.destroy_ah = mthca_ah_destroy;

 if (dev->mthca_flags & MTHCA_FLAG_SRQ) {
  dev->ib_dev.create_srq = mthca_create_srq;
  dev->ib_dev.modify_srq = mthca_modify_srq;
  dev->ib_dev.query_srq = mthca_query_srq;
  dev->ib_dev.destroy_srq = mthca_destroy_srq;
  dev->ib_dev.uverbs_cmd_mask |=
   (1ull << IB_USER_VERBS_CMD_CREATE_SRQ) |
   (1ull << IB_USER_VERBS_CMD_MODIFY_SRQ) |
   (1ull << IB_USER_VERBS_CMD_QUERY_SRQ) |
   (1ull << IB_USER_VERBS_CMD_DESTROY_SRQ);

  if (mthca_is_memfree(dev))
   dev->ib_dev.post_srq_recv = mthca_arbel_post_srq_recv;
  else
   dev->ib_dev.post_srq_recv = mthca_tavor_post_srq_recv;
 }

 dev->ib_dev.create_qp = mthca_create_qp;
 dev->ib_dev.modify_qp = mthca_modify_qp;
 dev->ib_dev.query_qp = mthca_query_qp;
 dev->ib_dev.destroy_qp = mthca_destroy_qp;
 dev->ib_dev.create_cq = mthca_create_cq;
 dev->ib_dev.resize_cq = mthca_resize_cq;
 dev->ib_dev.destroy_cq = mthca_destroy_cq;
 dev->ib_dev.poll_cq = mthca_poll_cq;
 dev->ib_dev.get_dma_mr = mthca_get_dma_mr;
 dev->ib_dev.reg_user_mr = mthca_reg_user_mr;
 dev->ib_dev.dereg_mr = mthca_dereg_mr;
 dev->ib_dev.get_port_immutable = mthca_port_immutable;
 dev->ib_dev.get_dev_fw_str = get_dev_fw_str;

 if (dev->mthca_flags & MTHCA_FLAG_FMR) {
  dev->ib_dev.alloc_fmr = mthca_alloc_fmr;
  dev->ib_dev.unmap_fmr = mthca_unmap_fmr;
  dev->ib_dev.dealloc_fmr = mthca_dealloc_fmr;
  if (mthca_is_memfree(dev))
   dev->ib_dev.map_phys_fmr = mthca_arbel_map_phys_fmr;
  else
   dev->ib_dev.map_phys_fmr = mthca_tavor_map_phys_fmr;
 }

 dev->ib_dev.attach_mcast = mthca_multicast_attach;
 dev->ib_dev.detach_mcast = mthca_multicast_detach;
 dev->ib_dev.process_mad = mthca_process_mad;

 if (mthca_is_memfree(dev)) {
  dev->ib_dev.req_notify_cq = mthca_arbel_arm_cq;
  dev->ib_dev.post_send = mthca_arbel_post_send;
  dev->ib_dev.post_recv = mthca_arbel_post_receive;
 } else {
  dev->ib_dev.req_notify_cq = mthca_tavor_arm_cq;
  dev->ib_dev.post_send = mthca_tavor_post_send;
  dev->ib_dev.post_recv = mthca_tavor_post_receive;
 }

 mutex_init(&dev->cap_mask_mutex);

 ret = ib_register_device(&dev->ib_dev, ((void*)0));
 if (ret)
  return ret;

 for (i = 0; i < ARRAY_SIZE(mthca_dev_attributes); ++i) {
  ret = device_create_file(&dev->ib_dev.dev,
      mthca_dev_attributes[i]);
  if (ret) {
   ib_unregister_device(&dev->ib_dev);
   return ret;
  }
 }

 mthca_start_catas_poll(dev);

 return 0;
}
