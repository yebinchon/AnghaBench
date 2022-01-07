
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct free_cdevsw {int dummy; } ;
struct cdevsw {int dummy; } ;
struct cdev_priv_list {int dummy; } ;
struct cdev_priv {int cdp_c; } ;


 int MA_OWNED ;
 int M_DEVT ;
 struct cdevsw* SLIST_FIRST (struct free_cdevsw*) ;
 int SLIST_INIT (struct free_cdevsw*) ;
 int SLIST_REMOVE_HEAD (struct free_cdevsw*,int ) ;
 int TAILQ_CONCAT (struct cdev_priv_list*,int *,int ) ;
 struct cdev_priv* TAILQ_FIRST (struct cdev_priv_list*) ;
 int TAILQ_INIT (struct cdev_priv_list*) ;
 int TAILQ_REMOVE (struct cdev_priv_list*,struct cdev_priv*,int ) ;
 int cdevp_free_list ;
 struct free_cdevsw cdevsw_gt_post_list ;
 int cdp_list ;
 int d_postfree_list ;
 int devfs_free (int *) ;
 int devmtx ;
 int free (struct cdevsw*,int ) ;
 int mtx_assert (int *,int ) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
dev_unlock_and_free(void)
{
 struct cdev_priv_list cdp_free;
 struct free_cdevsw csw_free;
 struct cdev_priv *cdp;
 struct cdevsw *csw;

 mtx_assert(&devmtx, MA_OWNED);





 TAILQ_INIT(&cdp_free);
 TAILQ_CONCAT(&cdp_free, &cdevp_free_list, cdp_list);
 csw_free = cdevsw_gt_post_list;
 SLIST_INIT(&cdevsw_gt_post_list);

 mtx_unlock(&devmtx);

 while ((cdp = TAILQ_FIRST(&cdp_free)) != ((void*)0)) {
  TAILQ_REMOVE(&cdp_free, cdp, cdp_list);
  devfs_free(&cdp->cdp_c);
 }
 while ((csw = SLIST_FIRST(&csw_free)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(&csw_free, d_postfree_list);
  free(csw, M_DEVT);
 }
}
