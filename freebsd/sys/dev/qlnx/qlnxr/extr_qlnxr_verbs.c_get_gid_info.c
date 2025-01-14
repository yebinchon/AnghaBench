
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct qlnxr_qp {size_t sgid_idx; } ;
struct qlnxr_dev {TYPE_1__* sgid_tbl; int * ha; } ;
struct TYPE_8__ {int * raw; } ;
struct TYPE_9__ {TYPE_2__ dgid; } ;
struct TYPE_10__ {TYPE_3__ grh; } ;
struct ib_qp_attr {TYPE_4__ ah_attr; } ;
struct ib_qp {int dummy; } ;
struct TYPE_12__ {void** dwords; int * bytes; } ;
struct TYPE_11__ {void** dwords; int * bytes; } ;
struct ecore_rdma_modify_qp_in_params {TYPE_6__ dgid; TYPE_5__ sgid; int vlan_id; } ;
typedef int qlnx_host_t ;
struct TYPE_7__ {int * raw; } ;


 int QL_DPRINT12 (int *,char*) ;
 int memcpy (int *,int *,int) ;
 void* ntohl (void*) ;
 int qlnxr_get_vlan_id_qp (int *,struct ib_qp_attr*,int,int *) ;

__attribute__((used)) static inline void
get_gid_info(struct ib_qp *ibqp, struct ib_qp_attr *attr,
 int attr_mask,
 struct qlnxr_dev *dev,
 struct qlnxr_qp *qp,
 struct ecore_rdma_modify_qp_in_params *qp_params)
{
 int i;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 memcpy(&qp_params->sgid.bytes[0],
        &dev->sgid_tbl[qp->sgid_idx].raw[0],
        sizeof(qp_params->sgid.bytes));
 memcpy(&qp_params->dgid.bytes[0],
        &attr->ah_attr.grh.dgid.raw[0],
        sizeof(qp_params->dgid));

 qlnxr_get_vlan_id_qp(ha, attr, attr_mask, &qp_params->vlan_id);

 for (i = 0; i < (sizeof(qp_params->sgid.dwords)/sizeof(uint32_t)); i++) {
  qp_params->sgid.dwords[i] = ntohl(qp_params->sgid.dwords[i]);
  qp_params->dgid.dwords[i] = ntohl(qp_params->dgid.dwords[i]);
 }

 QL_DPRINT12(ha, "exit\n");
 return;
}
