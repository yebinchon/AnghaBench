
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rwlock {int dummy; } ;
struct mtx {int dummy; } ;
struct neglist {struct mtx nl_lock; int nl_list; } ;
struct namecache {int nc_flag; int nc_name; int nc_dvp; } ;
struct TYPE_2__ {struct mtx nl_lock; int nl_list; } ;


 int MPASS (int) ;
 int NCF_HOTNEGATIVE ;
 int NCF_NEGATIVE ;
 struct rwlock* NCP2BUCKETLOCK (struct namecache*) ;
 struct neglist* NCP2NEGLIST (struct namecache*) ;
 int SDT_PROBE2 (int ,int ,int ,int ,int ,int ) ;
 struct namecache* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct namecache*,int ) ;
 int TAILQ_REMOVE (int *,struct namecache*,int ) ;
 struct mtx* VP2VNODELOCK (int ) ;
 int cache_free (struct namecache*) ;
 int cache_negative_shrink_select (scalar_t__,struct namecache**,struct neglist**) ;
 int cache_zap_locked (struct namecache*,int) ;
 int counter_u64_add (int ,int) ;
 int done ;
 int mtx_lock (struct mtx*) ;
 int * mtx_owner (struct mtx*) ;
 int mtx_trylock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int namecache ;
 int nc_dst ;
 TYPE_1__ ncneg_hot ;
 struct mtx ncneg_shrink_lock ;
 int numhotneg ;
 int numneg_evicted ;
 scalar_t__ numneglists ;
 int rw_wlock (struct rwlock*) ;
 int rw_wunlock (struct rwlock*) ;
 scalar_t__ shrink_list_turn ;
 int shrink_negative ;
 int shrinking_skipped ;
 int vfs ;

__attribute__((used)) static void
cache_negative_zap_one(void)
{
 struct namecache *ncp, *ncp2;
 struct neglist *neglist;
 struct mtx *dvlp;
 struct rwlock *blp;

 if (mtx_owner(&ncneg_shrink_lock) != ((void*)0) ||
     !mtx_trylock(&ncneg_shrink_lock)) {
  counter_u64_add(shrinking_skipped, 1);
  return;
 }

 mtx_lock(&ncneg_hot.nl_lock);
 ncp = TAILQ_FIRST(&ncneg_hot.nl_list);
 if (ncp != ((void*)0)) {
  neglist = NCP2NEGLIST(ncp);
  mtx_lock(&neglist->nl_lock);
  TAILQ_REMOVE(&ncneg_hot.nl_list, ncp, nc_dst);
  TAILQ_INSERT_TAIL(&neglist->nl_list, ncp, nc_dst);
  ncp->nc_flag &= ~NCF_HOTNEGATIVE;
  numhotneg--;
  mtx_unlock(&neglist->nl_lock);
 }
 mtx_unlock(&ncneg_hot.nl_lock);

 cache_negative_shrink_select(shrink_list_turn, &ncp, &neglist);
 shrink_list_turn++;
 if (shrink_list_turn == numneglists)
  shrink_list_turn = 0;
 if (ncp == ((void*)0) && shrink_list_turn == 0)
  cache_negative_shrink_select(shrink_list_turn, &ncp, &neglist);
 mtx_unlock(&ncneg_shrink_lock);
 if (ncp == ((void*)0))
  return;

 MPASS(ncp->nc_flag & NCF_NEGATIVE);
 dvlp = VP2VNODELOCK(ncp->nc_dvp);
 blp = NCP2BUCKETLOCK(ncp);
 mtx_unlock(&neglist->nl_lock);
 mtx_lock(dvlp);
 rw_wlock(blp);
 mtx_lock(&neglist->nl_lock);
 ncp2 = TAILQ_FIRST(&neglist->nl_list);
 if (ncp != ncp2 || dvlp != VP2VNODELOCK(ncp2->nc_dvp) ||
     blp != NCP2BUCKETLOCK(ncp2) || !(ncp2->nc_flag & NCF_NEGATIVE)) {
  ncp = ((void*)0);
 } else {
  SDT_PROBE2(vfs, namecache, shrink_negative, done, ncp->nc_dvp,
      ncp->nc_name);

  cache_zap_locked(ncp, 1);
  counter_u64_add(numneg_evicted, 1);
 }
 mtx_unlock(&neglist->nl_lock);
 rw_wunlock(blp);
 mtx_unlock(dvlp);
 cache_free(ncp);
}
