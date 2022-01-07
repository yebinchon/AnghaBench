
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_iwarp_cm_info {int ird; int ord; int private_data_len; int vlan; int local_port; int remote_port; int * local_ip; int * remote_ip; int ip_version; } ;
struct ecore_hwfn {int dummy; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,...) ;
 int ECORE_MSG_RDMA ;

__attribute__((used)) static void
ecore_iwarp_print_cm_info(struct ecore_hwfn *p_hwfn,
     struct ecore_iwarp_cm_info *cm_info)
{
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "ip_version = %d\n",
     cm_info->ip_version);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "remote_ip %x.%x.%x.%x\n",
     cm_info->remote_ip[0],
     cm_info->remote_ip[1],
     cm_info->remote_ip[2],
     cm_info->remote_ip[3]);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "local_ip %x.%x.%x.%x\n",
     cm_info->local_ip[0],
     cm_info->local_ip[1],
     cm_info->local_ip[2],
     cm_info->local_ip[3]);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "remote_port = %x\n",
     cm_info->remote_port);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "local_port = %x\n",
     cm_info->local_port);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "vlan = %x\n",
     cm_info->vlan);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "private_data_len = %x\n",
     cm_info->private_data_len);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "ord = %d\n",
     cm_info->ord);
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "ird = %d\n",
     cm_info->ird);
}
