
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx4_init_hca_param {int log_rd_per_qp; scalar_t__ uar_page_sz; unsigned long long pf_context_behaviour; unsigned long long num_ports; int log_num_qps; int log_num_srqs; int log_num_cqs; int log_mpt_sz; int dev_cap_enabled; int eqe_size; int cqe_size; int extra_flags; scalar_t__ rss_ip_frags; int phys_port_id; int qp1_proxy_qpn; int qp1_tunnel_qpn; int qp0_proxy_qpn; int qp0_tunnel_qpn; int qp0_qkey; int reserved_lkey; int reserved_eq; int max_eq; int mtt_quota; int mpt_quota; int cq_quota; int srq_quota; int qp_quota; int hca_core_clock; int log_mc_entry_sz; scalar_t__ global_caps; } ;
struct mlx4_func_cap {int log_rd_per_qp; scalar_t__ uar_page_sz; unsigned long long pf_context_behaviour; unsigned long long num_ports; int log_num_qps; int log_num_srqs; int log_num_cqs; int log_mpt_sz; int dev_cap_enabled; int eqe_size; int cqe_size; int extra_flags; scalar_t__ rss_ip_frags; int phys_port_id; int qp1_proxy_qpn; int qp1_tunnel_qpn; int qp0_proxy_qpn; int qp0_tunnel_qpn; int qp0_qkey; int reserved_lkey; int reserved_eq; int max_eq; int mtt_quota; int mpt_quota; int cq_quota; int srq_quota; int qp_quota; int hca_core_clock; int log_mc_entry_sz; scalar_t__ global_caps; } ;
struct mlx4_dev_cap {int log_rd_per_qp; scalar_t__ uar_page_sz; unsigned long long pf_context_behaviour; unsigned long long num_ports; int log_num_qps; int log_num_srqs; int log_num_cqs; int log_mpt_sz; int dev_cap_enabled; int eqe_size; int cqe_size; int extra_flags; scalar_t__ rss_ip_frags; int phys_port_id; int qp1_proxy_qpn; int qp1_tunnel_qpn; int qp0_proxy_qpn; int qp0_tunnel_qpn; int qp0_qkey; int reserved_lkey; int reserved_eq; int max_eq; int mtt_quota; int mpt_quota; int cq_quota; int srq_quota; int qp_quota; int hca_core_clock; int log_mc_entry_sz; scalar_t__ global_caps; } ;
struct TYPE_6__ {int max_qp_dest_rdma; int page_size_cap; int uar_page_size; unsigned long long num_ports; int num_qps; int num_srqs; int num_cqs; int num_mpts; int num_uars; int reserved_uars; int eqe_size; int eqe_factor; int cqe_size; int * qp1_proxy; int * qp1_tunnel; int * qp0_proxy; int * qp0_tunnel; int * qp0_qkey; int alloc_res_qp_mask; scalar_t__ bf_reg_size; int flags2; int userspace_caps; int * pkey_table_len; int * gid_table_len; int * phys_port_id; int * port_type; int * port_mask; scalar_t__ num_amgms; scalar_t__ num_mgms; int num_pds; int reserved_lkey; int reserved_eqs; int num_eqs; int hca_core_clock; } ;
struct TYPE_4__ {int mtt; int mpt; int cq; int srq; int qp; } ;
struct mlx4_dev {scalar_t__ uar_page_shift; TYPE_3__ caps; TYPE_2__* persist; TYPE_1__ quotas; } ;
typedef int hca_param ;
typedef int func_cap ;
typedef int dev_cap ;
struct TYPE_5__ {int pdev; } ;


 int ENODEV ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int MLX4_DEV_CAP_64B_CQE_ENABLED ;
 int MLX4_DEV_CAP_64B_EQE_ENABLED ;
 int MLX4_DEV_CAP_CQE_STRIDE_ENABLED ;
 int MLX4_DEV_CAP_EQE_STRIDE_ENABLED ;
 int MLX4_DEV_CAP_FLAG2_TS ;
 unsigned long long MLX4_MAX_PORTS ;
 int MLX4_NUM_PDS ;
 int MLX4_QUERY_FUNC_FLAGS_A0_RES_QP ;
 int MLX4_QUERY_FUNC_FLAGS_BF_RES_QP ;
 int MLX4_RESERVE_A0_QP ;
 int MLX4_RESERVE_ETH_BF_QP ;
 int MLX4_USER_DEV_CAP_LARGE_CQE ;
 scalar_t__ PAGE_SHIFT ;
 int PAGE_SIZE ;
 unsigned long long PF_CONTEXT_BEHAVIOUR_MASK ;
 void* kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int memset (struct mlx4_init_hca_param*,int ,int) ;
 int mlx4_QUERY_FUNC_CAP (struct mlx4_dev*,int,struct mlx4_init_hca_param*) ;
 int mlx4_QUERY_FW (struct mlx4_dev*) ;
 int mlx4_QUERY_HCA (struct mlx4_dev*,struct mlx4_init_hca_param*) ;
 int mlx4_dbg (struct mlx4_dev*,char*,char*) ;
 int mlx4_dev_cap (struct mlx4_dev*,struct mlx4_init_hca_param*) ;
 int mlx4_err (struct mlx4_dev*,char*,...) ;
 int mlx4_get_slave_pkey_gid_tbl_len (struct mlx4_dev*,int,int *,int *) ;
 int mlx4_log_num_mgm_entry_size ;
 int mlx4_replace_zero_macs (struct mlx4_dev*) ;
 int mlx4_set_num_reserved_uars (struct mlx4_dev*,struct mlx4_init_hca_param*) ;
 int mlx4_warn (struct mlx4_dev*,char*,...) ;
 int pci_resource_len (int ,int) ;
 int slave_adjust_steering_mode (struct mlx4_dev*,struct mlx4_init_hca_param*,struct mlx4_init_hca_param*) ;

__attribute__((used)) static int mlx4_slave_cap(struct mlx4_dev *dev)
{
 int err;
 u32 page_size;
 struct mlx4_dev_cap dev_cap;
 struct mlx4_func_cap func_cap;
 struct mlx4_init_hca_param hca_param;
 u8 i;

 memset(&hca_param, 0, sizeof(hca_param));
 err = mlx4_QUERY_HCA(dev, &hca_param);
 if (err) {
  mlx4_err(dev, "QUERY_HCA command failed, aborting\n");
  return err;
 }




 if (hca_param.global_caps) {
  mlx4_err(dev, "Unknown hca global capabilities\n");
  return -ENOSYS;
 }

 mlx4_log_num_mgm_entry_size = hca_param.log_mc_entry_sz;

 dev->caps.hca_core_clock = hca_param.hca_core_clock;

 memset(&dev_cap, 0, sizeof(dev_cap));
 dev->caps.max_qp_dest_rdma = 1 << hca_param.log_rd_per_qp;
 err = mlx4_dev_cap(dev, &dev_cap);
 if (err) {
  mlx4_err(dev, "QUERY_DEV_CAP command failed, aborting\n");
  return err;
 }

 err = mlx4_QUERY_FW(dev);
 if (err)
  mlx4_err(dev, "QUERY_FW command failed: could not get FW version\n");

 page_size = ~dev->caps.page_size_cap + 1;
 mlx4_warn(dev, "HCA minimum page size:%d\n", page_size);
 if (page_size > PAGE_SIZE) {
  mlx4_err(dev, "HCA minimum page size of %d bigger than kernel PAGE_SIZE of %ld, aborting\n",
    page_size, (long)PAGE_SIZE);
  return -ENODEV;
 }


 dev->uar_page_shift = hca_param.uar_page_sz + 12;


 if (dev->uar_page_shift > PAGE_SHIFT) {
  mlx4_err(dev,
    "Invalid configuration: uar page size is larger than system page size\n");
  return -ENODEV;
 }


 mlx4_set_num_reserved_uars(dev, &dev_cap);





 dev->caps.uar_page_size = PAGE_SIZE;

 memset(&func_cap, 0, sizeof(func_cap));
 err = mlx4_QUERY_FUNC_CAP(dev, 0, &func_cap);
 if (err) {
  mlx4_err(dev, "QUERY_FUNC_CAP general command failed, aborting (%d)\n",
    err);
  return err;
 }

 if ((func_cap.pf_context_behaviour | PF_CONTEXT_BEHAVIOUR_MASK) !=
     PF_CONTEXT_BEHAVIOUR_MASK) {
  mlx4_err(dev, "Unknown pf context behaviour %x known flags %x\n",
    func_cap.pf_context_behaviour, PF_CONTEXT_BEHAVIOUR_MASK);
  return -ENOSYS;
 }

 dev->caps.num_ports = func_cap.num_ports;
 dev->quotas.qp = func_cap.qp_quota;
 dev->quotas.srq = func_cap.srq_quota;
 dev->quotas.cq = func_cap.cq_quota;
 dev->quotas.mpt = func_cap.mpt_quota;
 dev->quotas.mtt = func_cap.mtt_quota;
 dev->caps.num_qps = 1 << hca_param.log_num_qps;
 dev->caps.num_srqs = 1 << hca_param.log_num_srqs;
 dev->caps.num_cqs = 1 << hca_param.log_num_cqs;
 dev->caps.num_mpts = 1 << hca_param.log_mpt_sz;
 dev->caps.num_eqs = func_cap.max_eq;
 dev->caps.reserved_eqs = func_cap.reserved_eq;
 dev->caps.reserved_lkey = func_cap.reserved_lkey;
 dev->caps.num_pds = MLX4_NUM_PDS;
 dev->caps.num_mgms = 0;
 dev->caps.num_amgms = 0;

 if (dev->caps.num_ports > MLX4_MAX_PORTS) {
  mlx4_err(dev, "HCA has %d ports, but we only support %d, aborting\n",
    dev->caps.num_ports, MLX4_MAX_PORTS);
  return -ENODEV;
 }

 mlx4_replace_zero_macs(dev);

 dev->caps.qp0_qkey = kcalloc(dev->caps.num_ports, sizeof(u32), GFP_KERNEL);
 dev->caps.qp0_tunnel = kcalloc(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);
 dev->caps.qp0_proxy = kcalloc(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);
 dev->caps.qp1_tunnel = kcalloc(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);
 dev->caps.qp1_proxy = kcalloc(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);

 if (!dev->caps.qp0_tunnel || !dev->caps.qp0_proxy ||
     !dev->caps.qp1_tunnel || !dev->caps.qp1_proxy ||
     !dev->caps.qp0_qkey) {
  err = -ENOMEM;
  goto err_mem;
 }

 for (i = 1; i <= dev->caps.num_ports; ++i) {
  err = mlx4_QUERY_FUNC_CAP(dev, i, &func_cap);
  if (err) {
   mlx4_err(dev, "QUERY_FUNC_CAP port command failed for port %d, aborting (%d)\n",
     i, err);
   goto err_mem;
  }
  dev->caps.qp0_qkey[i - 1] = func_cap.qp0_qkey;
  dev->caps.qp0_tunnel[i - 1] = func_cap.qp0_tunnel_qpn;
  dev->caps.qp0_proxy[i - 1] = func_cap.qp0_proxy_qpn;
  dev->caps.qp1_tunnel[i - 1] = func_cap.qp1_tunnel_qpn;
  dev->caps.qp1_proxy[i - 1] = func_cap.qp1_proxy_qpn;
  dev->caps.port_mask[i] = dev->caps.port_type[i];
  dev->caps.phys_port_id[i] = func_cap.phys_port_id;
  err = mlx4_get_slave_pkey_gid_tbl_len(dev, i,
            &dev->caps.gid_table_len[i],
            &dev->caps.pkey_table_len[i]);
  if (err)
   goto err_mem;
 }

 if (dev->caps.uar_page_size * (dev->caps.num_uars -
           dev->caps.reserved_uars) >
           pci_resource_len(dev->persist->pdev,
       2)) {
  mlx4_err(dev, "HCA reported UAR region size of 0x%x bigger than PCI resource 2 size of 0x%llx, aborting\n",
    dev->caps.uar_page_size * dev->caps.num_uars,
    (unsigned long long)
    pci_resource_len(dev->persist->pdev, 2));
  err = -ENOMEM;
  goto err_mem;
 }

 if (hca_param.dev_cap_enabled & MLX4_DEV_CAP_64B_EQE_ENABLED) {
  dev->caps.eqe_size = 64;
  dev->caps.eqe_factor = 1;
 } else {
  dev->caps.eqe_size = 32;
  dev->caps.eqe_factor = 0;
 }

 if (hca_param.dev_cap_enabled & MLX4_DEV_CAP_64B_CQE_ENABLED) {
  dev->caps.cqe_size = 64;
  dev->caps.userspace_caps |= MLX4_USER_DEV_CAP_LARGE_CQE;
 } else {
  dev->caps.cqe_size = 32;
 }

 if (hca_param.dev_cap_enabled & MLX4_DEV_CAP_EQE_STRIDE_ENABLED) {
  dev->caps.eqe_size = hca_param.eqe_size;
  dev->caps.eqe_factor = 0;
 }

 if (hca_param.dev_cap_enabled & MLX4_DEV_CAP_CQE_STRIDE_ENABLED) {
  dev->caps.cqe_size = hca_param.cqe_size;

  dev->caps.userspace_caps |= MLX4_USER_DEV_CAP_LARGE_CQE;
 }

 dev->caps.flags2 &= ~MLX4_DEV_CAP_FLAG2_TS;
 mlx4_warn(dev, "Timestamping is not supported in slave mode\n");

 slave_adjust_steering_mode(dev, &dev_cap, &hca_param);
 mlx4_dbg(dev, "RSS support for IP fragments is %s\n",
   hca_param.rss_ip_frags ? "on" : "off");

 if (func_cap.extra_flags & MLX4_QUERY_FUNC_FLAGS_BF_RES_QP &&
     dev->caps.bf_reg_size)
  dev->caps.alloc_res_qp_mask |= MLX4_RESERVE_ETH_BF_QP;

 if (func_cap.extra_flags & MLX4_QUERY_FUNC_FLAGS_A0_RES_QP)
  dev->caps.alloc_res_qp_mask |= MLX4_RESERVE_A0_QP;

 return 0;

err_mem:
 kfree(dev->caps.qp0_qkey);
 kfree(dev->caps.qp0_tunnel);
 kfree(dev->caps.qp0_proxy);
 kfree(dev->caps.qp1_tunnel);
 kfree(dev->caps.qp1_proxy);
 dev->caps.qp0_qkey = ((void*)0);
 dev->caps.qp0_tunnel = ((void*)0);
 dev->caps.qp0_proxy = ((void*)0);
 dev->caps.qp1_tunnel = ((void*)0);
 dev->caps.qp1_proxy = ((void*)0);

 return err;
}
