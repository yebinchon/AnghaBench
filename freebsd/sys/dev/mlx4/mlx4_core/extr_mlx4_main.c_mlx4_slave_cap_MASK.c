#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct mlx4_init_hca_param {int log_rd_per_qp; scalar_t__ uar_page_sz; unsigned long long pf_context_behaviour; unsigned long long num_ports; int log_num_qps; int log_num_srqs; int log_num_cqs; int log_mpt_sz; int dev_cap_enabled; int eqe_size; int cqe_size; int extra_flags; scalar_t__ rss_ip_frags; int /*<<< orphan*/  phys_port_id; int /*<<< orphan*/  qp1_proxy_qpn; int /*<<< orphan*/  qp1_tunnel_qpn; int /*<<< orphan*/  qp0_proxy_qpn; int /*<<< orphan*/  qp0_tunnel_qpn; int /*<<< orphan*/  qp0_qkey; int /*<<< orphan*/  reserved_lkey; int /*<<< orphan*/  reserved_eq; int /*<<< orphan*/  max_eq; int /*<<< orphan*/  mtt_quota; int /*<<< orphan*/  mpt_quota; int /*<<< orphan*/  cq_quota; int /*<<< orphan*/  srq_quota; int /*<<< orphan*/  qp_quota; int /*<<< orphan*/  hca_core_clock; int /*<<< orphan*/  log_mc_entry_sz; scalar_t__ global_caps; } ;
struct mlx4_func_cap {int log_rd_per_qp; scalar_t__ uar_page_sz; unsigned long long pf_context_behaviour; unsigned long long num_ports; int log_num_qps; int log_num_srqs; int log_num_cqs; int log_mpt_sz; int dev_cap_enabled; int eqe_size; int cqe_size; int extra_flags; scalar_t__ rss_ip_frags; int /*<<< orphan*/  phys_port_id; int /*<<< orphan*/  qp1_proxy_qpn; int /*<<< orphan*/  qp1_tunnel_qpn; int /*<<< orphan*/  qp0_proxy_qpn; int /*<<< orphan*/  qp0_tunnel_qpn; int /*<<< orphan*/  qp0_qkey; int /*<<< orphan*/  reserved_lkey; int /*<<< orphan*/  reserved_eq; int /*<<< orphan*/  max_eq; int /*<<< orphan*/  mtt_quota; int /*<<< orphan*/  mpt_quota; int /*<<< orphan*/  cq_quota; int /*<<< orphan*/  srq_quota; int /*<<< orphan*/  qp_quota; int /*<<< orphan*/  hca_core_clock; int /*<<< orphan*/  log_mc_entry_sz; scalar_t__ global_caps; } ;
struct mlx4_dev_cap {int log_rd_per_qp; scalar_t__ uar_page_sz; unsigned long long pf_context_behaviour; unsigned long long num_ports; int log_num_qps; int log_num_srqs; int log_num_cqs; int log_mpt_sz; int dev_cap_enabled; int eqe_size; int cqe_size; int extra_flags; scalar_t__ rss_ip_frags; int /*<<< orphan*/  phys_port_id; int /*<<< orphan*/  qp1_proxy_qpn; int /*<<< orphan*/  qp1_tunnel_qpn; int /*<<< orphan*/  qp0_proxy_qpn; int /*<<< orphan*/  qp0_tunnel_qpn; int /*<<< orphan*/  qp0_qkey; int /*<<< orphan*/  reserved_lkey; int /*<<< orphan*/  reserved_eq; int /*<<< orphan*/  max_eq; int /*<<< orphan*/  mtt_quota; int /*<<< orphan*/  mpt_quota; int /*<<< orphan*/  cq_quota; int /*<<< orphan*/  srq_quota; int /*<<< orphan*/  qp_quota; int /*<<< orphan*/  hca_core_clock; int /*<<< orphan*/  log_mc_entry_sz; scalar_t__ global_caps; } ;
struct TYPE_6__ {int max_qp_dest_rdma; int page_size_cap; int uar_page_size; unsigned long long num_ports; int num_qps; int num_srqs; int num_cqs; int num_mpts; int num_uars; int reserved_uars; int eqe_size; int eqe_factor; int cqe_size; int /*<<< orphan*/ * qp1_proxy; int /*<<< orphan*/ * qp1_tunnel; int /*<<< orphan*/ * qp0_proxy; int /*<<< orphan*/ * qp0_tunnel; int /*<<< orphan*/ * qp0_qkey; int /*<<< orphan*/  alloc_res_qp_mask; scalar_t__ bf_reg_size; int /*<<< orphan*/  flags2; int /*<<< orphan*/  userspace_caps; int /*<<< orphan*/ * pkey_table_len; int /*<<< orphan*/ * gid_table_len; int /*<<< orphan*/ * phys_port_id; int /*<<< orphan*/ * port_type; int /*<<< orphan*/ * port_mask; scalar_t__ num_amgms; scalar_t__ num_mgms; int /*<<< orphan*/  num_pds; int /*<<< orphan*/  reserved_lkey; int /*<<< orphan*/  reserved_eqs; int /*<<< orphan*/  num_eqs; int /*<<< orphan*/  hca_core_clock; } ;
struct TYPE_4__ {int /*<<< orphan*/  mtt; int /*<<< orphan*/  mpt; int /*<<< orphan*/  cq; int /*<<< orphan*/  srq; int /*<<< orphan*/  qp; } ;
struct mlx4_dev {scalar_t__ uar_page_shift; TYPE_3__ caps; TYPE_2__* persist; TYPE_1__ quotas; } ;
typedef  int /*<<< orphan*/  hca_param ;
typedef  int /*<<< orphan*/  func_cap ;
typedef  int /*<<< orphan*/  dev_cap ;
struct TYPE_5__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX4_DEV_CAP_64B_CQE_ENABLED ; 
 int MLX4_DEV_CAP_64B_EQE_ENABLED ; 
 int MLX4_DEV_CAP_CQE_STRIDE_ENABLED ; 
 int MLX4_DEV_CAP_EQE_STRIDE_ENABLED ; 
 int /*<<< orphan*/  MLX4_DEV_CAP_FLAG2_TS ; 
 unsigned long long MLX4_MAX_PORTS ; 
 int /*<<< orphan*/  MLX4_NUM_PDS ; 
 int MLX4_QUERY_FUNC_FLAGS_A0_RES_QP ; 
 int MLX4_QUERY_FUNC_FLAGS_BF_RES_QP ; 
 int /*<<< orphan*/  MLX4_RESERVE_A0_QP ; 
 int /*<<< orphan*/  MLX4_RESERVE_ETH_BF_QP ; 
 int /*<<< orphan*/  MLX4_USER_DEV_CAP_LARGE_CQE ; 
 scalar_t__ PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 unsigned long long PF_CONTEXT_BEHAVIOUR_MASK ; 
 void* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_init_hca_param*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mlx4_dev*,int,struct mlx4_init_hca_param*) ; 
 int FUNC4 (struct mlx4_dev*) ; 
 int FUNC5 (struct mlx4_dev*,struct mlx4_init_hca_param*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,char*,char*) ; 
 int FUNC7 (struct mlx4_dev*,struct mlx4_init_hca_param*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*,char*,...) ; 
 int FUNC9 (struct mlx4_dev*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlx4_log_num_mgm_entry_size ; 
 int /*<<< orphan*/  FUNC10 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx4_dev*,struct mlx4_init_hca_param*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx4_dev*,char*,...) ; 
 int FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx4_dev*,struct mlx4_init_hca_param*,struct mlx4_init_hca_param*) ; 

__attribute__((used)) static int FUNC15(struct mlx4_dev *dev)
{
	int			   err;
	u32			   page_size;
	struct mlx4_dev_cap	   dev_cap;
	struct mlx4_func_cap	   func_cap;
	struct mlx4_init_hca_param hca_param;
	u8			   i;

	FUNC2(&hca_param, 0, sizeof(hca_param));
	err = FUNC5(dev, &hca_param);
	if (err) {
		FUNC8(dev, "QUERY_HCA command failed, aborting\n");
		return err;
	}

	/* fail if the hca has an unknown global capability
	 * at this time global_caps should be always zeroed
	 */
	if (hca_param.global_caps) {
		FUNC8(dev, "Unknown hca global capabilities\n");
		return -ENOSYS;
	}

	mlx4_log_num_mgm_entry_size = hca_param.log_mc_entry_sz;

	dev->caps.hca_core_clock = hca_param.hca_core_clock;

	FUNC2(&dev_cap, 0, sizeof(dev_cap));
	dev->caps.max_qp_dest_rdma = 1 << hca_param.log_rd_per_qp;
	err = FUNC7(dev, &dev_cap);
	if (err) {
		FUNC8(dev, "QUERY_DEV_CAP command failed, aborting\n");
		return err;
	}

	err = FUNC4(dev);
	if (err)
		FUNC8(dev, "QUERY_FW command failed: could not get FW version\n");

	page_size = ~dev->caps.page_size_cap + 1;
	FUNC12(dev, "HCA minimum page size:%d\n", page_size);
	if (page_size > PAGE_SIZE) {
		FUNC8(dev, "HCA minimum page size of %d bigger than kernel PAGE_SIZE of %ld, aborting\n",
			 page_size, (long)PAGE_SIZE);
		return -ENODEV;
	}

	/* Set uar_page_shift for VF */
	dev->uar_page_shift = hca_param.uar_page_sz + 12;

	/* Make sure the master uar page size is valid */
	if (dev->uar_page_shift > PAGE_SHIFT) {
		FUNC8(dev,
			 "Invalid configuration: uar page size is larger than system page size\n");
		return  -ENODEV;
	}

	/* Set reserved_uars based on the uar_page_shift */
	FUNC11(dev, &dev_cap);

	/* Although uar page size in FW differs from system page size,
	 * upper software layers (mlx4_ib, mlx4_en and part of mlx4_core)
	 * still works with assumption that uar page size == system page size
	 */
	dev->caps.uar_page_size = PAGE_SIZE;

	FUNC2(&func_cap, 0, sizeof(func_cap));
	err = FUNC3(dev, 0, &func_cap);
	if (err) {
		FUNC8(dev, "QUERY_FUNC_CAP general command failed, aborting (%d)\n",
			 err);
		return err;
	}

	if ((func_cap.pf_context_behaviour | PF_CONTEXT_BEHAVIOUR_MASK) !=
	    PF_CONTEXT_BEHAVIOUR_MASK) {
		FUNC8(dev, "Unknown pf context behaviour %x known flags %x\n",
			 func_cap.pf_context_behaviour, PF_CONTEXT_BEHAVIOUR_MASK);
		return -ENOSYS;
	}

	dev->caps.num_ports		= func_cap.num_ports;
	dev->quotas.qp			= func_cap.qp_quota;
	dev->quotas.srq			= func_cap.srq_quota;
	dev->quotas.cq			= func_cap.cq_quota;
	dev->quotas.mpt			= func_cap.mpt_quota;
	dev->quotas.mtt			= func_cap.mtt_quota;
	dev->caps.num_qps		= 1 << hca_param.log_num_qps;
	dev->caps.num_srqs		= 1 << hca_param.log_num_srqs;
	dev->caps.num_cqs		= 1 << hca_param.log_num_cqs;
	dev->caps.num_mpts		= 1 << hca_param.log_mpt_sz;
	dev->caps.num_eqs		= func_cap.max_eq;
	dev->caps.reserved_eqs		= func_cap.reserved_eq;
	dev->caps.reserved_lkey		= func_cap.reserved_lkey;
	dev->caps.num_pds               = MLX4_NUM_PDS;
	dev->caps.num_mgms              = 0;
	dev->caps.num_amgms             = 0;

	if (dev->caps.num_ports > MLX4_MAX_PORTS) {
		FUNC8(dev, "HCA has %d ports, but we only support %d, aborting\n",
			 dev->caps.num_ports, MLX4_MAX_PORTS);
		return -ENODEV;
	}

	FUNC10(dev);

	dev->caps.qp0_qkey = FUNC0(dev->caps.num_ports, sizeof(u32), GFP_KERNEL);
	dev->caps.qp0_tunnel = FUNC0(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);
	dev->caps.qp0_proxy = FUNC0(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);
	dev->caps.qp1_tunnel = FUNC0(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);
	dev->caps.qp1_proxy = FUNC0(dev->caps.num_ports, sizeof (u32), GFP_KERNEL);

	if (!dev->caps.qp0_tunnel || !dev->caps.qp0_proxy ||
	    !dev->caps.qp1_tunnel || !dev->caps.qp1_proxy ||
	    !dev->caps.qp0_qkey) {
		err = -ENOMEM;
		goto err_mem;
	}

	for (i = 1; i <= dev->caps.num_ports; ++i) {
		err = FUNC3(dev, i, &func_cap);
		if (err) {
			FUNC8(dev, "QUERY_FUNC_CAP port command failed for port %d, aborting (%d)\n",
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
		err = FUNC9(dev, i,
						      &dev->caps.gid_table_len[i],
						      &dev->caps.pkey_table_len[i]);
		if (err)
			goto err_mem;
	}

	if (dev->caps.uar_page_size * (dev->caps.num_uars -
				       dev->caps.reserved_uars) >
				       FUNC13(dev->persist->pdev,
							2)) {
		FUNC8(dev, "HCA reported UAR region size of 0x%x bigger than PCI resource 2 size of 0x%llx, aborting\n",
			 dev->caps.uar_page_size * dev->caps.num_uars,
			 (unsigned long long)
			 FUNC13(dev->persist->pdev, 2));
		err = -ENOMEM;
		goto err_mem;
	}

	if (hca_param.dev_cap_enabled & MLX4_DEV_CAP_64B_EQE_ENABLED) {
		dev->caps.eqe_size   = 64;
		dev->caps.eqe_factor = 1;
	} else {
		dev->caps.eqe_size   = 32;
		dev->caps.eqe_factor = 0;
	}

	if (hca_param.dev_cap_enabled & MLX4_DEV_CAP_64B_CQE_ENABLED) {
		dev->caps.cqe_size   = 64;
		dev->caps.userspace_caps |= MLX4_USER_DEV_CAP_LARGE_CQE;
	} else {
		dev->caps.cqe_size   = 32;
	}

	if (hca_param.dev_cap_enabled & MLX4_DEV_CAP_EQE_STRIDE_ENABLED) {
		dev->caps.eqe_size = hca_param.eqe_size;
		dev->caps.eqe_factor = 0;
	}

	if (hca_param.dev_cap_enabled & MLX4_DEV_CAP_CQE_STRIDE_ENABLED) {
		dev->caps.cqe_size = hca_param.cqe_size;
		/* User still need to know when CQE > 32B */
		dev->caps.userspace_caps |= MLX4_USER_DEV_CAP_LARGE_CQE;
	}

	dev->caps.flags2 &= ~MLX4_DEV_CAP_FLAG2_TS;
	FUNC12(dev, "Timestamping is not supported in slave mode\n");

	FUNC14(dev, &dev_cap, &hca_param);
	FUNC6(dev, "RSS support for IP fragments is %s\n",
		 hca_param.rss_ip_frags ? "on" : "off");

	if (func_cap.extra_flags & MLX4_QUERY_FUNC_FLAGS_BF_RES_QP &&
	    dev->caps.bf_reg_size)
		dev->caps.alloc_res_qp_mask |= MLX4_RESERVE_ETH_BF_QP;

	if (func_cap.extra_flags & MLX4_QUERY_FUNC_FLAGS_A0_RES_QP)
		dev->caps.alloc_res_qp_mask |= MLX4_RESERVE_A0_QP;

	return 0;

err_mem:
	FUNC1(dev->caps.qp0_qkey);
	FUNC1(dev->caps.qp0_tunnel);
	FUNC1(dev->caps.qp0_proxy);
	FUNC1(dev->caps.qp1_tunnel);
	FUNC1(dev->caps.qp1_proxy);
	dev->caps.qp0_qkey = NULL;
	dev->caps.qp0_tunnel = NULL;
	dev->caps.qp0_proxy = NULL;
	dev->caps.qp1_tunnel = NULL;
	dev->caps.qp1_proxy = NULL;

	return err;
}