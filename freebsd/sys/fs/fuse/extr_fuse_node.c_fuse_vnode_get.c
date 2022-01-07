
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct vnode {int dummy; } ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct fuse_entry_out {scalar_t__ entry_valid; scalar_t__ entry_valid_nsec; int generation; } ;
struct componentname {int cn_flags; int cn_namelen; char* cn_nameptr; struct thread* cn_thread; } ;
typedef enum vtype { ____Placeholder_vtype } vtype ;
struct TYPE_2__ {int nlookup; int generation; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int ISDOTDOT ;
 int MAKEENTRY ;
 int MPASS (int ) ;
 TYPE_1__* VTOFUD (struct vnode*) ;
 int cache_enter_time (struct vnode*,struct vnode*,struct componentname*,struct timespec*,int *) ;
 struct thread* curthread ;
 int fuse_validity_2_timespec (struct fuse_entry_out*,struct timespec*) ;
 int fuse_vnode_alloc (struct mount*,struct thread*,int ,int,struct vnode**) ;
 int fuse_vnode_setparent (struct vnode*,struct vnode*) ;

int
fuse_vnode_get(struct mount *mp,
    struct fuse_entry_out *feo,
    uint64_t nodeid,
    struct vnode *dvp,
    struct vnode **vpp,
    struct componentname *cnp,
    enum vtype vtyp)
{
 struct thread *td = (cnp != ((void*)0) ? cnp->cn_thread : curthread);




 uint64_t generation = feo ? feo->generation : 0;
 int err = 0;

 err = fuse_vnode_alloc(mp, td, nodeid, vtyp, vpp);
 if (err) {
  return err;
 }
 if (dvp != ((void*)0)) {
  MPASS(cnp && (cnp->cn_flags & ISDOTDOT) == 0);
  MPASS(cnp &&
   !(cnp->cn_namelen == 1 && cnp->cn_nameptr[0] == '.'));
  fuse_vnode_setparent(*vpp, dvp);
 }
 if (dvp != ((void*)0) && cnp != ((void*)0) && (cnp->cn_flags & MAKEENTRY) != 0 &&
     feo != ((void*)0) &&
     (feo->entry_valid != 0 || feo->entry_valid_nsec != 0)) {
  struct timespec timeout;

  ASSERT_VOP_LOCKED(*vpp, "fuse_vnode_get");
  ASSERT_VOP_LOCKED(dvp, "fuse_vnode_get");

  fuse_validity_2_timespec(feo, &timeout);
  cache_enter_time(dvp, *vpp, cnp, &timeout, ((void*)0));
 }

 VTOFUD(*vpp)->generation = generation;






 if (cnp == ((void*)0) || ((cnp->cn_flags & ISDOTDOT) == 0 &&
     (cnp->cn_namelen != 1 || cnp->cn_nameptr[0] != '.')))
  VTOFUD(*vpp)->nlookup++;

 return 0;
}
