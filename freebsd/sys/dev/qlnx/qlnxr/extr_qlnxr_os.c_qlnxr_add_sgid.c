
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int member_0; } ;
union ib_gid {TYPE_1__ member_0; } ;
struct qlnxr_dev {int sgid_lock; int ha; int * sgid_tbl; } ;


 int QLNXR_MAX_SGID ;
 int QL_DPRINT12 (int ,char*,...) ;
 int memcmp (int *,union ib_gid*,int) ;
 int memcpy (int *,union ib_gid*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static bool
qlnxr_add_sgid(struct qlnxr_dev *dev, union ib_gid *new_sgid)
{
 union ib_gid zero_sgid = { { 0 } };
 int i;

 mtx_lock(&dev->sgid_lock);
 for (i = 0; i < QLNXR_MAX_SGID; i++) {
  if (!memcmp(&dev->sgid_tbl[i], &zero_sgid,
    sizeof(union ib_gid))) {

   memcpy(&dev->sgid_tbl[i], new_sgid,
    sizeof(union ib_gid));
   QL_DPRINT12(dev->ha, "copying sgid : %llx\n",
     *new_sgid);
   mtx_unlock(&dev->sgid_lock);

   return 1;
  } else if (!memcmp(&dev->sgid_tbl[i], new_sgid,
    sizeof(union ib_gid))) {

   mtx_unlock(&dev->sgid_lock);
   QL_DPRINT12(dev->ha, "sgid present : %llx\n",
     *new_sgid);
   return 0;
  }
 }
 if (i == QLNXR_MAX_SGID) {
  QL_DPRINT12(dev->ha, "didn't find an empty entry in sgid_tbl\n");
 }
 mtx_unlock(&dev->sgid_lock);
 return 0;
}
