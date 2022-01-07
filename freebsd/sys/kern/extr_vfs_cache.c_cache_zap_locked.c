
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct namecache {int nc_flag; TYPE_1__* nc_dvp; int nc_name; TYPE_1__* nc_vp; } ;
struct TYPE_6__ {int v_cache_src; struct namecache* v_cache_dd; int v_cache_dst; } ;


 int CTR2 (int ,char*,struct namecache*,TYPE_1__*) ;
 int KTR_VFS ;
 scalar_t__ LIST_EMPTY (int *) ;
 int LIST_REMOVE (struct namecache*,int ) ;
 int NCF_DVDROP ;
 int NCF_ISDOTDOT ;
 int NCF_NEGATIVE ;
 int RA_WLOCKED ;
 int SDT_PROBE2 (int ,int ,int ,int ,TYPE_1__*,int ) ;
 int SDT_PROBE3 (int ,int ,int ,int ,TYPE_1__*,int ,TYPE_1__*) ;
 int TAILQ_REMOVE (int *,struct namecache*,int ) ;
 int atomic_subtract_rel_long (int *,int) ;
 int cache_assert_bucket_locked (struct namecache*,int ) ;
 int cache_assert_vnode_locked (TYPE_1__*) ;
 int cache_negative_remove (struct namecache*,int) ;
 int done ;
 int namecache ;
 int nc_dst ;
 int nc_hash ;
 int nc_src ;
 int numcache ;
 int numcachehv ;
 int vfs ;
 int zap ;
 int zap_negative ;

__attribute__((used)) static void
cache_zap_locked(struct namecache *ncp, bool neg_locked)
{

 if (!(ncp->nc_flag & NCF_NEGATIVE))
  cache_assert_vnode_locked(ncp->nc_vp);
 cache_assert_vnode_locked(ncp->nc_dvp);
 cache_assert_bucket_locked(ncp, RA_WLOCKED);

 CTR2(KTR_VFS, "cache_zap(%p) vp %p", ncp,
     (ncp->nc_flag & NCF_NEGATIVE) ? ((void*)0) : ncp->nc_vp);
 LIST_REMOVE(ncp, nc_hash);
 if (!(ncp->nc_flag & NCF_NEGATIVE)) {
  SDT_PROBE3(vfs, namecache, zap, done, ncp->nc_dvp,
      ncp->nc_name, ncp->nc_vp);
  TAILQ_REMOVE(&ncp->nc_vp->v_cache_dst, ncp, nc_dst);
  if (ncp == ncp->nc_vp->v_cache_dd)
   ncp->nc_vp->v_cache_dd = ((void*)0);
 } else {
  SDT_PROBE2(vfs, namecache, zap_negative, done, ncp->nc_dvp,
      ncp->nc_name);
  cache_negative_remove(ncp, neg_locked);
 }
 if (ncp->nc_flag & NCF_ISDOTDOT) {
  if (ncp == ncp->nc_dvp->v_cache_dd)
   ncp->nc_dvp->v_cache_dd = ((void*)0);
 } else {
  LIST_REMOVE(ncp, nc_src);
  if (LIST_EMPTY(&ncp->nc_dvp->v_cache_src)) {
   ncp->nc_flag |= NCF_DVDROP;
   atomic_subtract_rel_long(&numcachehv, 1);
  }
 }
 atomic_subtract_rel_long(&numcache, 1);
}
