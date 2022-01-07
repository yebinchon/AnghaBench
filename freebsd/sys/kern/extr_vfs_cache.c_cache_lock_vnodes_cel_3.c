
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mtx {int dummy; } ;
struct celockstate {struct mtx** vlp; } ;


 int MPASS (int ) ;
 struct mtx* VP2VNODELOCK (struct vnode*) ;
 int cache_assert_vlp_locked (struct mtx*) ;
 int cache_lock_vnodes_cel_3_failures ;
 int cache_unlock_vnodes_cel (struct celockstate*) ;
 int mtx_lock (struct mtx*) ;
 scalar_t__ mtx_trylock (struct mtx*) ;

__attribute__((used)) static bool
cache_lock_vnodes_cel_3(struct celockstate *cel, struct vnode *vp)
{
 struct mtx *vlp;
 bool ret;

 cache_assert_vlp_locked(cel->vlp[0]);
 cache_assert_vlp_locked(cel->vlp[1]);
 MPASS(cel->vlp[2] == ((void*)0));

 MPASS(vp != ((void*)0));
 vlp = VP2VNODELOCK(vp);

 ret = 1;
 if (vlp >= cel->vlp[1]) {
  mtx_lock(vlp);
 } else {
  if (mtx_trylock(vlp))
   goto out;
  cache_lock_vnodes_cel_3_failures++;
  cache_unlock_vnodes_cel(cel);
  if (vlp < cel->vlp[0]) {
   mtx_lock(vlp);
   mtx_lock(cel->vlp[0]);
   mtx_lock(cel->vlp[1]);
  } else {
   if (cel->vlp[0] != ((void*)0))
    mtx_lock(cel->vlp[0]);
   mtx_lock(vlp);
   mtx_lock(cel->vlp[1]);
  }
  ret = 0;
 }
out:
 cel->vlp[2] = vlp;
 return (ret);
}
