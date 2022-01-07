
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdevsw {int dummy; } ;


 int MA_OWNED ;
 int SLIST_INSERT_HEAD (int *,struct cdevsw*,int ) ;
 int cdevsw_gt_post_list ;
 int d_postfree_list ;
 int devmtx ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
cdevsw_free_devlocked(struct cdevsw *csw)
{

 mtx_assert(&devmtx, MA_OWNED);
 SLIST_INSERT_HEAD(&cdevsw_gt_post_list, csw, d_postfree_list);
}
