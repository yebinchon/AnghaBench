
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int si_refcount; } ;


 int MA_NOTOWNED ;
 int devmtx ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
dev_ref(struct cdev *dev)
{

 mtx_assert(&devmtx, MA_NOTOWNED);
 mtx_lock(&devmtx);
 dev->si_refcount++;
 mtx_unlock(&devmtx);
}
