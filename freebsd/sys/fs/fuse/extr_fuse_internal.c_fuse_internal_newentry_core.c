
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct fuse_entry_out {int attr_valid_nsec; int attr_valid; int attr; int nodeid; } ;
struct fuse_dispatcher {struct fuse_entry_out* answ; } ;
struct componentname {int cn_cred; int cn_thread; } ;
typedef enum vtype { ____Placeholder_vtype } vtype ;


 int fdisp_wait_answ (struct fuse_dispatcher*) ;
 int fuse_internal_cache_attrs (struct vnode*,int *,int ,int ,int *) ;
 int fuse_internal_checkentry (struct fuse_entry_out*,int) ;
 int fuse_internal_forget_send (struct mount*,int ,int ,int ,int) ;
 int fuse_vnode_clear_attr_cache (struct vnode*) ;
 int fuse_vnode_get (struct mount*,struct fuse_entry_out*,int ,struct vnode*,struct vnode**,struct componentname*,int) ;
 struct mount* vnode_mount (struct vnode*) ;

int
fuse_internal_newentry_core(struct vnode *dvp,
    struct vnode **vpp,
    struct componentname *cnp,
    enum vtype vtyp,
    struct fuse_dispatcher *fdip)
{
 int err = 0;
 struct fuse_entry_out *feo;
 struct mount *mp = vnode_mount(dvp);

 if ((err = fdisp_wait_answ(fdip))) {
  return err;
 }
 feo = fdip->answ;

 if ((err = fuse_internal_checkentry(feo, vtyp))) {
  return err;
 }
 err = fuse_vnode_get(mp, feo, feo->nodeid, dvp, vpp, cnp, vtyp);
 if (err) {
  fuse_internal_forget_send(mp, cnp->cn_thread, cnp->cn_cred,
      feo->nodeid, 1);
  return err;
 }





 fuse_vnode_clear_attr_cache(dvp);

 fuse_internal_cache_attrs(*vpp, &feo->attr, feo->attr_valid,
  feo->attr_valid_nsec, ((void*)0));

 return err;
}
