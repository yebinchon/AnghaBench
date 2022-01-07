
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct ib_device {int dummy; } ;
typedef enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;


 int ib_cache_gid_find (struct ib_device*,union ib_gid const*,int,struct net_device*,int *,int *) ;

int ib_find_cached_gid(struct ib_device *device,
         const union ib_gid *gid,
         enum ib_gid_type gid_type,
         struct net_device *ndev,
         u8 *port_num,
         u16 *index)
{
 return ib_cache_gid_find(device, gid, gid_type, ndev, port_num, index);
}
