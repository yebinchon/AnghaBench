
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neglist {int nl_lock; int nl_list; } ;
struct namecache {int nc_flag; } ;


 int MA_OWNED ;
 int MPASS (int) ;
 int NCF_NEGATIVE ;
 struct neglist* NCP2NEGLIST (struct namecache*) ;
 int RA_WLOCKED ;
 int TAILQ_INSERT_TAIL (int *,struct namecache*,int ) ;
 int atomic_add_rel_long (int *,int) ;
 int cache_assert_bucket_locked (struct namecache*,int ) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nc_dst ;
 int numneg ;

__attribute__((used)) static void
cache_negative_insert(struct namecache *ncp, bool neg_locked)
{
 struct neglist *neglist;

 MPASS(ncp->nc_flag & NCF_NEGATIVE);
 cache_assert_bucket_locked(ncp, RA_WLOCKED);
 neglist = NCP2NEGLIST(ncp);
 if (!neg_locked) {
  mtx_lock(&neglist->nl_lock);
 } else {
  mtx_assert(&neglist->nl_lock, MA_OWNED);
 }
 TAILQ_INSERT_TAIL(&neglist->nl_list, ncp, nc_dst);
 if (!neg_locked)
  mtx_unlock(&neglist->nl_lock);
 atomic_add_rel_long(&numneg, 1);
}
