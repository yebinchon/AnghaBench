
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev_priv {int cdp_flags; } ;
struct cdev {int dummy; } ;


 int CDP_UNREF_DTR ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int TAILQ_INSERT_HEAD (int *,struct cdev_priv*,int ) ;
 struct cdev_priv* cdev2priv (struct cdev*) ;
 int cdevp_free_list ;
 int cdp_list ;
 int devmtx ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
dev_free_devlocked(struct cdev *cdev)
{
 struct cdev_priv *cdp;

 mtx_assert(&devmtx, MA_OWNED);
 cdp = cdev2priv(cdev);
 KASSERT((cdp->cdp_flags & CDP_UNREF_DTR) == 0,
     ("destroy_dev() was not called after delist_dev(%p)", cdev));
 TAILQ_INSERT_HEAD(&cdevp_free_list, cdp, cdp_list);
}
