
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct rwlock {int dummy; } ;
struct namecache {int nc_flag; struct vnode* nc_dvp; } ;


 int MPASS (int) ;
 int NCF_NEGATIVE ;
 struct rwlock* NCP2BUCKETLOCK (struct namecache*) ;
 int cache_assert_vnode_locked (struct vnode*) ;
 int cache_zap_locked (struct namecache*,int) ;
 int rw_wlock (struct rwlock*) ;
 int rw_wunlock (struct rwlock*) ;

__attribute__((used)) static void
cache_zap_negative_locked_vnode_kl(struct namecache *ncp, struct vnode *vp)
{
 struct rwlock *blp;

 MPASS(ncp->nc_dvp == vp);
 MPASS(ncp->nc_flag & NCF_NEGATIVE);
 cache_assert_vnode_locked(vp);

 blp = NCP2BUCKETLOCK(ncp);
 rw_wlock(blp);
 cache_zap_locked(ncp, 0);
 rw_wunlock(blp);
}
