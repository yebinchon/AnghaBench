
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev_priv {int cdp_flags; } ;
struct cdev {int dummy; } ;


 int CDP_ACTIVE ;
 int MA_OWNED ;
 struct cdev_priv* cdev2priv (struct cdev*) ;
 int devfs_generation ;
 int devmtx ;
 int mtx_assert (int *,int ) ;

void
devfs_destroy(struct cdev *dev)
{
 struct cdev_priv *cdp;

 mtx_assert(&devmtx, MA_OWNED);
 cdp = cdev2priv(dev);
 cdp->cdp_flags &= ~CDP_ACTIVE;
 devfs_generation++;
}
