
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vnode {scalar_t__ v_type; struct namecache* v_cache_dd; } ;
struct rwlock {int dummy; } ;
struct namecache {int nc_flag; int nc_vp; struct vnode* nc_dvp; } ;
struct celockstate {int ** vlp; } ;


 struct rwlock* HASH2BUCKETLOCK (int ) ;
 int MPASS (int) ;
 int NCF_ISDOTDOT ;
 int NCF_NEGATIVE ;
 struct rwlock* NCP2BUCKETLOCK (struct namecache*) ;
 scalar_t__ VDIR ;
 int * VP2VNODELOCK (int ) ;
 int cache_lock_buckets_cel (struct celockstate*,struct rwlock*,struct rwlock*) ;
 int cache_lock_vnodes_cel (struct celockstate*,struct vnode*,struct vnode*) ;
 scalar_t__ cache_lock_vnodes_cel_3 (struct celockstate*,int ) ;
 int cache_unlock_vnodes_cel (struct celockstate*) ;

__attribute__((used)) static void
cache_enter_lock(struct celockstate *cel, struct vnode *dvp, struct vnode *vp,
    uint32_t hash)
{
 struct namecache *ncp;
 struct rwlock *blps[2];

 blps[0] = HASH2BUCKETLOCK(hash);
 for (;;) {
  blps[1] = ((void*)0);
  cache_lock_vnodes_cel(cel, dvp, vp);
  if (vp == ((void*)0) || vp->v_type != VDIR)
   break;
  ncp = vp->v_cache_dd;
  if (ncp == ((void*)0))
   break;
  if ((ncp->nc_flag & NCF_ISDOTDOT) == 0)
   break;
  MPASS(ncp->nc_dvp == vp);
  blps[1] = NCP2BUCKETLOCK(ncp);
  if (ncp->nc_flag & NCF_NEGATIVE)
   break;
  if (cache_lock_vnodes_cel_3(cel, ncp->nc_vp))
   break;




  if (ncp == vp->v_cache_dd &&
      (ncp->nc_flag & NCF_ISDOTDOT) != 0 &&
      blps[1] == NCP2BUCKETLOCK(ncp) &&
      VP2VNODELOCK(ncp->nc_vp) == cel->vlp[2])
   break;
  cache_unlock_vnodes_cel(cel);
  cel->vlp[0] = ((void*)0);
  cel->vlp[1] = ((void*)0);
  cel->vlp[2] = ((void*)0);
 }
 cache_lock_buckets_cel(cel, blps[0], blps[1]);
}
