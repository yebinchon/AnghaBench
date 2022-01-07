
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; } ;
struct TYPE_2__ {int flag; int parent_nid; } ;


 int FN_PARENT_NID ;
 int MPASS (int) ;
 scalar_t__ VDIR ;
 TYPE_1__* VTOFUD (struct vnode*) ;
 int VTOI (struct vnode*) ;

__attribute__((used)) static inline void
fuse_vnode_setparent(struct vnode *vp, struct vnode *dvp)
{
 if (dvp != ((void*)0) && vp->v_type == VDIR) {
  MPASS(dvp->v_type == VDIR);
  VTOFUD(vp)->parent_nid = VTOI(dvp);
  VTOFUD(vp)->flag |= FN_PARENT_NID;
 } else {
  VTOFUD(vp)->flag &= ~FN_PARENT_NID;
 }
}
