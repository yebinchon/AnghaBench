
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int si_refcount; } ;


 int MA_OWNED ;
 int devmtx ;
 int mtx_assert (int *,int ) ;

void
dev_refl(struct cdev *dev)
{

 mtx_assert(&devmtx, MA_OWNED);
 dev->si_refcount++;
}
