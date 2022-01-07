
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ib_gid {int* raw; } ;
typedef int u16 ;
struct TYPE_2__ {union ib_gid dgid; } ;
struct ib_ah_attr {TYPE_1__ grh; } ;



__attribute__((used)) static inline bool
qlnxr_get_vlan_id_gsi(struct ib_ah_attr *ah_attr, u16 *vlan_id)
{
 u16 tmp_vlan_id;
 union ib_gid *dgid = &ah_attr->grh.dgid;

 tmp_vlan_id = (dgid->raw[11] << 8) | dgid->raw[12];
 if (tmp_vlan_id < 0x1000) {
  *vlan_id = tmp_vlan_id;
  return 1;
 } else {
  *vlan_id = 0;
  return 0;
 }
}
