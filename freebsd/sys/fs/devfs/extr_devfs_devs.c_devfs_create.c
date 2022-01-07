
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev_priv {int cdp_inode; int cdp_flags; } ;
struct cdev {int dummy; } ;


 int CDP_ACTIVE ;
 int MA_OWNED ;
 int TAILQ_INSERT_TAIL (int *,struct cdev_priv*,int ) ;
 int alloc_unrl (int ) ;
 struct cdev_priv* cdev2priv (struct cdev*) ;
 int cdevp_list ;
 int cdp_list ;
 int dev_refl (struct cdev*) ;
 int devfs_generation ;
 int devfs_inos ;
 int devmtx ;
 int mtx_assert (int *,int ) ;

void
devfs_create(struct cdev *dev)
{
 struct cdev_priv *cdp;

 mtx_assert(&devmtx, MA_OWNED);
 cdp = cdev2priv(dev);
 cdp->cdp_flags |= CDP_ACTIVE;
 cdp->cdp_inode = alloc_unrl(devfs_inos);
 dev_refl(dev);
 TAILQ_INSERT_TAIL(&cdevp_list, cdp, cdp_list);
 devfs_generation++;
}
