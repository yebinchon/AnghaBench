
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neglist {int nl_lock; int nl_list; } ;
struct namecache {int nc_flag; } ;
struct TYPE_2__ {int nl_lock; int nl_list; } ;


 int MA_OWNED ;
 int MPASS (int) ;
 int NCF_HOTNEGATIVE ;
 int NCF_NEGATIVE ;
 struct neglist* NCP2NEGLIST (struct namecache*) ;
 int RA_WLOCKED ;
 int TAILQ_REMOVE (int *,struct namecache*,int ) ;
 int atomic_subtract_rel_long (int *,int) ;
 int cache_assert_bucket_locked (struct namecache*,int ) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nc_dst ;
 TYPE_1__ ncneg_hot ;
 int numhotneg ;
 int numneg ;

__attribute__((used)) static void
cache_negative_remove(struct namecache *ncp, bool neg_locked)
{
 struct neglist *neglist;
 bool hot_locked = 0;
 bool list_locked = 0;

 MPASS(ncp->nc_flag & NCF_NEGATIVE);
 cache_assert_bucket_locked(ncp, RA_WLOCKED);
 neglist = NCP2NEGLIST(ncp);
 if (!neg_locked) {
  if (ncp->nc_flag & NCF_HOTNEGATIVE) {
   hot_locked = 1;
   mtx_lock(&ncneg_hot.nl_lock);
   if (!(ncp->nc_flag & NCF_HOTNEGATIVE)) {
    list_locked = 1;
    mtx_lock(&neglist->nl_lock);
   }
  } else {
   list_locked = 1;
   mtx_lock(&neglist->nl_lock);
  }
 }
 if (ncp->nc_flag & NCF_HOTNEGATIVE) {
  mtx_assert(&ncneg_hot.nl_lock, MA_OWNED);
  TAILQ_REMOVE(&ncneg_hot.nl_list, ncp, nc_dst);
  numhotneg--;
 } else {
  mtx_assert(&neglist->nl_lock, MA_OWNED);
  TAILQ_REMOVE(&neglist->nl_list, ncp, nc_dst);
 }
 if (list_locked)
  mtx_unlock(&neglist->nl_lock);
 if (hot_locked)
  mtx_unlock(&ncneg_hot.nl_lock);
 atomic_subtract_rel_long(&numneg, 1);
}
