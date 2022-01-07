
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
typedef int u16 ;
struct ib_device {int dummy; } ;
struct find_gid_index_context {int gid_type; int vlan_id; } ;
typedef enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;


 int find_gid_index ;
 int ib_find_gid_by_filter (struct ib_device*,union ib_gid const*,int ,int ,struct find_gid_index_context*,int *) ;

__attribute__((used)) static int get_sgid_index_from_eth(struct ib_device *device, u8 port_num,
       u16 vlan_id, const union ib_gid *sgid,
       enum ib_gid_type gid_type,
       u16 *gid_index)
{
 struct find_gid_index_context context = {.vlan_id = vlan_id,
       .gid_type = gid_type};

 return ib_find_gid_by_filter(device, sgid, port_num, find_gid_index,
         &context, gid_index);
}
