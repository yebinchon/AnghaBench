
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int syn_phy_addr_hi; int syn_phy_addr_lo; int syn_ip_payload_length; int connect_mode; int rcv_wnd_scale; int mss; int remote_port; int local_port; int tos_or_tc; int ttl; int flow_label; int * remote_ip; int * local_ip; int ip_version; int flags; int vlan_id; int remote_mac_addr_hi; int remote_mac_addr_mid; int remote_mac_addr_lo; int local_mac_addr_hi; int local_mac_addr_mid; int local_mac_addr_lo; } ;
struct iwarp_tcp_offload_ramrod_data {TYPE_1__ tcp; } ;
struct ecore_hwfn {int dummy; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,...) ;
 int ECORE_MSG_RDMA ;

__attribute__((used)) static void
ecore_iwarp_print_tcp_ramrod(struct ecore_hwfn *p_hwfn,
        struct iwarp_tcp_offload_ramrod_data *p_tcp_ramrod)
{
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, ">>> PRINT TCP RAMROD\n");

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "local_mac=%x %x %x\n",
     p_tcp_ramrod->tcp.local_mac_addr_lo,
     p_tcp_ramrod->tcp.local_mac_addr_mid,
     p_tcp_ramrod->tcp.local_mac_addr_hi);

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "remote_mac=%x %x %x\n",
     p_tcp_ramrod->tcp.remote_mac_addr_lo,
     p_tcp_ramrod->tcp.remote_mac_addr_mid,
     p_tcp_ramrod->tcp.remote_mac_addr_hi);

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "vlan_id=%x\n",
     p_tcp_ramrod->tcp.vlan_id);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "flags=%x\n",
     p_tcp_ramrod->tcp.flags);

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "ip_version=%x\n",
     p_tcp_ramrod->tcp.ip_version);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "local_ip=%x.%x.%x.%x\n",
     p_tcp_ramrod->tcp.local_ip[0],
     p_tcp_ramrod->tcp.local_ip[1],
     p_tcp_ramrod->tcp.local_ip[2],
     p_tcp_ramrod->tcp.local_ip[3]);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "remote_ip=%x.%x.%x.%x\n",
     p_tcp_ramrod->tcp.remote_ip[0],
     p_tcp_ramrod->tcp.remote_ip[1],
     p_tcp_ramrod->tcp.remote_ip[2],
     p_tcp_ramrod->tcp.remote_ip[3]);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "flow_label=%x\n",
     p_tcp_ramrod->tcp.flow_label);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "ttl=%x\n",
     p_tcp_ramrod->tcp.ttl);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "tos_or_tc=%x\n",
     p_tcp_ramrod->tcp.tos_or_tc);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "local_port=%x\n",
     p_tcp_ramrod->tcp.local_port);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "remote_port=%x\n",
     p_tcp_ramrod->tcp.remote_port);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "mss=%x\n",
     p_tcp_ramrod->tcp.mss);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "rcv_wnd_scale=%x\n",
     p_tcp_ramrod->tcp.rcv_wnd_scale);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "connect_mode=%x\n",
     p_tcp_ramrod->tcp.connect_mode);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "syn_ip_payload_length=%x\n",
     p_tcp_ramrod->tcp.syn_ip_payload_length);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "syn_phy_addr_lo=%x\n",
     p_tcp_ramrod->tcp.syn_phy_addr_lo);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "syn_phy_addr_hi=%x\n",
     p_tcp_ramrod->tcp.syn_phy_addr_hi);

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "<<<f  PRINT TCP RAMROD\n");
}
