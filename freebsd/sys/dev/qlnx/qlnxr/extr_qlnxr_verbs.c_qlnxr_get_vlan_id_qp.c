
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union ib_gid {int* raw; } ;
typedef int u16 ;
struct TYPE_3__ {union ib_gid dgid; } ;
struct TYPE_4__ {TYPE_1__ grh; } ;
struct ib_qp_attr {int vlan_id; TYPE_2__ ah_attr; } ;
typedef int qlnx_host_t ;


 int EVL_VLID_MASK ;
 int IB_QP_VID ;
 int QL_DPRINT12 (int *,char*,...) ;

__attribute__((used)) static inline bool
qlnxr_get_vlan_id_qp(qlnx_host_t *ha, struct ib_qp_attr *attr, int attr_mask,
       u16 *vlan_id)
{
 bool ret = 0;

 QL_DPRINT12(ha, "enter \n");

 *vlan_id = 0;
 ret = 1;



 QL_DPRINT12(ha, "exit vlan_id = 0x%x ret = %d \n", *vlan_id, ret);

 return (ret);
}
