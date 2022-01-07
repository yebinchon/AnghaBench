
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf_hw_stats {int rx_truncated_pkts; int rx_l4_pclp; int rx_tcp_offset_errs; int rx_tcp_flag_errs; int rx_l4_port_errs; int rx_udp_len_errs; int rx_l4_csum_errs; int rx_l4_malformed; int rx_l3_pclp; int rx_ip_ttl_errs; int rx_ip_payload_malformed; int rx_ip_hdr_malformed; int rx_ip_csum_errs; int rx_ip_ver_errs; int rx_l2_pclp; int rx_l2_len_mismatch; int rx_undersize; int rx_oversize; int rx_l2_hdr_malformed; int rx_prel2_errs; int rx_bgx_errs; int rx_fcs_errs; int rx_jabber_errs; int rx_bgx_truncated_pkts; } ;
struct nicvf_drv_stats {int rx_frames_ok; } ;
struct nicvf {struct nicvf_drv_stats drv_stats; struct nicvf_hw_stats hw_stats; } ;
struct cqe_rx_t {int err_opcode; int err_level; } ;
struct cmp_queue {int dummy; } ;
int
nicvf_check_cqe_rx_errs(struct nicvf *nic, struct cmp_queue *cq,
    struct cqe_rx_t *cqe_rx)
{
 struct nicvf_hw_stats *stats = &nic->hw_stats;
 struct nicvf_drv_stats *drv_stats = &nic->drv_stats;

 if (!cqe_rx->err_level && !cqe_rx->err_opcode) {
  drv_stats->rx_frames_ok++;
  return (0);
 }

 switch (cqe_rx->err_opcode) {
 case 132:
  stats->rx_bgx_truncated_pkts++;
  break;
 case 133:
  stats->rx_jabber_errs++;
  break;
 case 134:
  stats->rx_fcs_errs++;
  break;
 case 131:
  stats->rx_bgx_errs++;
  break;
 case 136:
  stats->rx_prel2_errs++;
  break;
 case 145:
  stats->rx_l2_hdr_malformed++;
  break;
 case 144:
  stats->rx_oversize++;
  break;
 case 142:
  stats->rx_undersize++;
  break;
 case 146:
  stats->rx_l2_len_mismatch++;
  break;
 case 143:
  stats->rx_l2_pclp++;
  break;
 case 147:
  stats->rx_ip_ver_errs++;
  break;
 case 151:
  stats->rx_ip_csum_errs++;
  break;
 case 149:
  stats->rx_ip_hdr_malformed++;
  break;
 case 148:
  stats->rx_ip_payload_malformed++;
  break;
 case 150:
  stats->rx_ip_ttl_errs++;
  break;
 case 141:
  stats->rx_l3_pclp++;
  break;
 case 139:
  stats->rx_l4_malformed++;
  break;
 case 140:
  stats->rx_l4_csum_errs++;
  break;
 case 128:
  stats->rx_udp_len_errs++;
  break;
 case 137:
  stats->rx_l4_port_errs++;
  break;
 case 130:
  stats->rx_tcp_flag_errs++;
  break;
 case 129:
  stats->rx_tcp_offset_errs++;
  break;
 case 138:
  stats->rx_l4_pclp++;
  break;
 case 135:
  stats->rx_truncated_pkts++;
  break;
 }

 return (1);
}
