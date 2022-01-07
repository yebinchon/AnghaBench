
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ib_uverbs_query_device_resp {int phys_port_cnt; int local_ca_ack_delay; int max_pkeys; int max_srq_sge; int max_srq_wr; int max_srq; int max_map_per_fmr; int max_fmr; int max_ah; int max_total_mcast_qp_attach; int max_mcast_qp_attach; int max_mcast_grp; int max_raw_ethy_qp; int max_raw_ipv6_qp; int max_mw; int max_rdd; int max_ee; int atomic_cap; int max_ee_init_rd_atom; int max_qp_init_rd_atom; int max_res_rd_atom; int max_ee_rd_atom; int max_qp_rd_atom; int max_pd; int max_mr; int max_cqe; int max_cq; int max_sge_rd; int max_sge; scalar_t__ device_cap_flags; int max_qp_wr; int max_qp; int hw_ver; int vendor_part_id; int vendor_id; int page_size_cap; int max_mr_size; int sys_image_guid; int node_guid; int fw_ver; } ;
struct ib_uverbs_file {int dummy; } ;
struct ib_device_attr {int local_ca_ack_delay; int max_pkeys; int max_srq_sge; int max_srq_wr; int max_srq; int max_map_per_fmr; int max_fmr; int max_ah; int max_total_mcast_qp_attach; int max_mcast_qp_attach; int max_mcast_grp; int max_raw_ethy_qp; int max_raw_ipv6_qp; int max_mw; int max_rdd; int max_ee; int atomic_cap; int max_ee_init_rd_atom; int max_qp_init_rd_atom; int max_res_rd_atom; int max_ee_rd_atom; int max_qp_rd_atom; int max_pd; int max_mr; int max_cqe; int max_cq; int max_sge_rd; int max_sge; scalar_t__ device_cap_flags; int max_qp_wr; int max_qp; int hw_ver; int vendor_part_id; int vendor_id; int page_size_cap; int max_mr_size; int sys_image_guid; int fw_ver; } ;
struct ib_device {int phys_port_cnt; int node_guid; } ;



__attribute__((used)) static void copy_query_dev_fields(struct ib_uverbs_file *file,
      struct ib_device *ib_dev,
      struct ib_uverbs_query_device_resp *resp,
      struct ib_device_attr *attr)
{
 resp->fw_ver = attr->fw_ver;
 resp->node_guid = ib_dev->node_guid;
 resp->sys_image_guid = attr->sys_image_guid;
 resp->max_mr_size = attr->max_mr_size;
 resp->page_size_cap = attr->page_size_cap;
 resp->vendor_id = attr->vendor_id;
 resp->vendor_part_id = attr->vendor_part_id;
 resp->hw_ver = attr->hw_ver;
 resp->max_qp = attr->max_qp;
 resp->max_qp_wr = attr->max_qp_wr;
 resp->device_cap_flags = (u32)(attr->device_cap_flags);
 resp->max_sge = attr->max_sge;
 resp->max_sge_rd = attr->max_sge_rd;
 resp->max_cq = attr->max_cq;
 resp->max_cqe = attr->max_cqe;
 resp->max_mr = attr->max_mr;
 resp->max_pd = attr->max_pd;
 resp->max_qp_rd_atom = attr->max_qp_rd_atom;
 resp->max_ee_rd_atom = attr->max_ee_rd_atom;
 resp->max_res_rd_atom = attr->max_res_rd_atom;
 resp->max_qp_init_rd_atom = attr->max_qp_init_rd_atom;
 resp->max_ee_init_rd_atom = attr->max_ee_init_rd_atom;
 resp->atomic_cap = attr->atomic_cap;
 resp->max_ee = attr->max_ee;
 resp->max_rdd = attr->max_rdd;
 resp->max_mw = attr->max_mw;
 resp->max_raw_ipv6_qp = attr->max_raw_ipv6_qp;
 resp->max_raw_ethy_qp = attr->max_raw_ethy_qp;
 resp->max_mcast_grp = attr->max_mcast_grp;
 resp->max_mcast_qp_attach = attr->max_mcast_qp_attach;
 resp->max_total_mcast_qp_attach = attr->max_total_mcast_qp_attach;
 resp->max_ah = attr->max_ah;
 resp->max_fmr = attr->max_fmr;
 resp->max_map_per_fmr = attr->max_map_per_fmr;
 resp->max_srq = attr->max_srq;
 resp->max_srq_wr = attr->max_srq_wr;
 resp->max_srq_sge = attr->max_srq_sge;
 resp->max_pkeys = attr->max_pkeys;
 resp->local_ca_ack_delay = attr->local_ca_ack_delay;
 resp->phys_port_cnt = ib_dev->phys_port_cnt;
}
