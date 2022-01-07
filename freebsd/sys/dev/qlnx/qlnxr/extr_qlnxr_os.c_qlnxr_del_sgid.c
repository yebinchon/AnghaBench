
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subnet_prefix; int interface_id; } ;
union ib_gid {TYPE_1__ global; } ;
struct qlnxr_dev {int sgid_lock; int * sgid_tbl; int ha; } ;


 int QLNXR_MAX_SGID ;
 int QL_DPRINT12 (int ,char*,int ,int ) ;
 int memcmp (int *,union ib_gid*,int) ;
 int memset (int *,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static bool qlnxr_del_sgid(struct qlnxr_dev *dev, union ib_gid *gid)
{
 int found = 0;
 int i;


 QL_DPRINT12(dev->ha, "removing gid %llx %llx\n",
   gid->global.interface_id,
   gid->global.subnet_prefix);
 mtx_lock(&dev->sgid_lock);

 for (i = 1; i < QLNXR_MAX_SGID; i++) {
  if (!memcmp(&dev->sgid_tbl[i], gid, sizeof(union ib_gid))) {

   memset(&dev->sgid_tbl[i], 0, sizeof(union ib_gid));
   found = 1;
   break;
  }
 }
 mtx_unlock(&dev->sgid_lock);

 return found;
}
