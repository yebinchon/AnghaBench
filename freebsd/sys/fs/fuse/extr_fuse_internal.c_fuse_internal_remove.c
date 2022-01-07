
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct fuse_dispatcher {scalar_t__ indata; } ;
struct componentname {int cn_namelen; int cn_nameptr; int cn_cred; int cn_thread; } ;
typedef int nlink_t ;
typedef enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;
struct TYPE_3__ {int va_nlink; } ;
struct TYPE_4__ {TYPE_1__ cached_attrs; } ;


 int FN_CTIMECHANGE ;
 scalar_t__ VDIR ;
 TYPE_2__* VTOFUD (struct vnode*) ;
 int cache_purge (struct vnode*) ;
 int fdisp_destroy (struct fuse_dispatcher*) ;
 int fdisp_init (struct fuse_dispatcher*,int) ;
 int fdisp_make_vp (struct fuse_dispatcher*,int,struct vnode*,int ,int ) ;
 int fdisp_wait_answ (struct fuse_dispatcher*) ;
 int fuse_internal_vnode_disappear (struct vnode*) ;
 int fuse_vnode_clear_attr_cache (struct vnode*) ;
 int fuse_vnode_update (struct vnode*,int ) ;
 int memcpy (scalar_t__,int ,int) ;
 scalar_t__ vnode_vtype (struct vnode*) ;

int
fuse_internal_remove(struct vnode *dvp,
    struct vnode *vp,
    struct componentname *cnp,
    enum fuse_opcode op)
{
 struct fuse_dispatcher fdi;
 nlink_t nlink;
 int err = 0;

 fdisp_init(&fdi, cnp->cn_namelen + 1);
 fdisp_make_vp(&fdi, op, dvp, cnp->cn_thread, cnp->cn_cred);

 memcpy(fdi.indata, cnp->cn_nameptr, cnp->cn_namelen);
 ((char *)fdi.indata)[cnp->cn_namelen] = '\0';

 err = fdisp_wait_answ(&fdi);
 fdisp_destroy(&fdi);

 if (err)
  return (err);
 nlink = VTOFUD(vp)->cached_attrs.va_nlink--;





 fuse_vnode_clear_attr_cache(dvp);


 if (nlink <= 1 || vnode_vtype(vp) == VDIR) {
  fuse_internal_vnode_disappear(vp);
 } else {
  cache_purge(vp);
  fuse_vnode_update(vp, FN_CTIMECHANGE);
 }

 return err;
}
