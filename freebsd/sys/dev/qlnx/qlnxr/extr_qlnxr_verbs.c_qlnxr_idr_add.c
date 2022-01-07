
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlnxr_dev {int idr_lock; int qpidr; int * ha; } ;
typedef int qlnx_host_t ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int QLNX_IS_IWARP (struct qlnxr_dev*) ;
 int QL_DPRINT11 (int *,char*) ;
 int QL_DPRINT12 (int *,char*,...) ;
 int idr_get_new_above (int *,void*,int ,int *) ;
 int idr_pre_get (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
qlnxr_idr_add(struct qlnxr_dev *dev, void *ptr, u32 id)
{
 u32 newid;
 int rc;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 if (!QLNX_IS_IWARP(dev))
  return 0;

 do {
  if (!idr_pre_get(&dev->qpidr, GFP_KERNEL)) {
   QL_DPRINT11(ha, "idr_pre_get failed\n");
   return -ENOMEM;
  }

  mtx_lock(&dev->idr_lock);

  rc = idr_get_new_above(&dev->qpidr, ptr, id, &newid);

  mtx_unlock(&dev->idr_lock);

 } while (rc == -EAGAIN);

 QL_DPRINT12(ha, "exit [%d]\n", rc);

 return rc;
}
