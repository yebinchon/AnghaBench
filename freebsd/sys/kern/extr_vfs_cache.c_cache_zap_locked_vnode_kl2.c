
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct rwlock {int dummy; } ;
struct namecache {int nc_flag; struct vnode* nc_vp; struct vnode* nc_dvp; } ;
struct mtx {int dummy; } ;


 int MPASS (int) ;
 int NCF_NEGATIVE ;
 struct rwlock* NCP2BUCKETLOCK (struct namecache*) ;
 struct mtx* VP2VNODELOCK (struct vnode*) ;
 int cache_assert_vnode_locked (struct vnode*) ;
 int cache_sort_vnodes (struct mtx**,struct mtx**) ;
 int cache_zap_locked (struct namecache*,int) ;
 int cache_zap_negative_locked_vnode_kl (struct namecache*,struct vnode*) ;
 int mtx_lock (struct mtx*) ;
 int mtx_trylock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int rw_wlock (struct rwlock*) ;
 int rw_wunlock (struct rwlock*) ;

__attribute__((used)) static bool
cache_zap_locked_vnode_kl2(struct namecache *ncp, struct vnode *vp,
    struct mtx **vlpp)
{
 struct mtx *pvlp, *vlp1, *vlp2, *to_unlock;
 struct rwlock *blp;

 MPASS(vp == ncp->nc_dvp || vp == ncp->nc_vp);
 cache_assert_vnode_locked(vp);

 if (ncp->nc_flag & NCF_NEGATIVE) {
  if (*vlpp != ((void*)0)) {
   mtx_unlock(*vlpp);
   *vlpp = ((void*)0);
  }
  cache_zap_negative_locked_vnode_kl(ncp, vp);
  return (1);
 }

 pvlp = VP2VNODELOCK(vp);
 blp = NCP2BUCKETLOCK(ncp);
 vlp1 = VP2VNODELOCK(ncp->nc_dvp);
 vlp2 = VP2VNODELOCK(ncp->nc_vp);

 if (*vlpp == vlp1 || *vlpp == vlp2) {
  to_unlock = *vlpp;
  *vlpp = ((void*)0);
 } else {
  if (*vlpp != ((void*)0)) {
   mtx_unlock(*vlpp);
   *vlpp = ((void*)0);
  }
  cache_sort_vnodes(&vlp1, &vlp2);
  if (vlp1 == pvlp) {
   mtx_lock(vlp2);
   to_unlock = vlp2;
  } else {
   if (!mtx_trylock(vlp1))
    goto out_relock;
   to_unlock = vlp1;
  }
 }
 rw_wlock(blp);
 cache_zap_locked(ncp, 0);
 rw_wunlock(blp);
 if (to_unlock != ((void*)0))
  mtx_unlock(to_unlock);
 return (1);

out_relock:
 mtx_unlock(vlp2);
 mtx_lock(vlp1);
 mtx_lock(vlp2);
 MPASS(*vlpp == ((void*)0));
 *vlpp = vlp1;
 return (0);
}
