
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlnxr_dev {int idr_lock; int qpidr; int * ha; } ;
typedef int qlnx_host_t ;


 int QLNX_IS_IWARP (struct qlnxr_dev*) ;
 int QL_DPRINT12 (int *,char*) ;
 int idr_remove (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
qlnxr_idr_remove(struct qlnxr_dev *dev, u32 id)
{
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 if (!QLNX_IS_IWARP(dev))
  return;

 mtx_lock(&dev->idr_lock);
 idr_remove(&dev->qpidr, id);
 mtx_unlock(&dev->idr_lock);

 QL_DPRINT12(ha, "exit \n");

 return;
}
