
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mtx {int dummy; } ;
struct celockstate {struct mtx** vlp; } ;


 int MPASS (int) ;
 struct mtx* VP2VNODELOCK (struct vnode*) ;
 int cache_sort_vnodes (struct mtx**,struct mtx**) ;
 int mtx_lock (struct mtx*) ;

__attribute__((used)) static void
cache_lock_vnodes_cel(struct celockstate *cel, struct vnode *vp,
    struct vnode *dvp)
{
 struct mtx *vlp1, *vlp2;

 MPASS(cel->vlp[0] == ((void*)0));
 MPASS(cel->vlp[1] == ((void*)0));
 MPASS(cel->vlp[2] == ((void*)0));

 MPASS(vp != ((void*)0) || dvp != ((void*)0));

 vlp1 = VP2VNODELOCK(vp);
 vlp2 = VP2VNODELOCK(dvp);
 cache_sort_vnodes(&vlp1, &vlp2);

 if (vlp1 != ((void*)0)) {
  mtx_lock(vlp1);
  cel->vlp[0] = vlp1;
 }
 mtx_lock(vlp2);
 cel->vlp[1] = vlp2;
}
