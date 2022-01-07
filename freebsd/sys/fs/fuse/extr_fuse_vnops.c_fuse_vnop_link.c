
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_link_args {struct componentname* a_cnp; struct vnode* a_tdvp; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct vattr {scalar_t__ va_nlink; } ;
struct fuse_link_in {int oldnodeid; } ;
struct fuse_entry_out {int attr_valid_nsec; int attr_valid; int attr; } ;
struct fuse_dispatcher {struct fuse_entry_out* answ; } ;
struct componentname {int dummy; } ;
typedef int fli ;


 int EMLINK ;
 int ENXIO ;
 int EXDEV ;
 int FUSE_LINK ;
 scalar_t__ FUSE_LINK_MAX ;
 int VTOI (struct vnode*) ;
 struct vattr* VTOVA (struct vnode*) ;
 int fdisp_destroy (struct fuse_dispatcher*) ;
 int fdisp_init (struct fuse_dispatcher*,int ) ;
 int fdisp_wait_answ (struct fuse_dispatcher*) ;
 int fuse_internal_cache_attrs (struct vnode*,int *,int ,int ,int *) ;
 int fuse_internal_checkentry (struct fuse_entry_out*,int ) ;
 int fuse_internal_newentry_makerequest (scalar_t__,int ,struct componentname*,int ,struct fuse_link_in*,int,struct fuse_dispatcher*) ;
 scalar_t__ fuse_isdeadfs (struct vnode*) ;
 int fuse_vnode_clear_attr_cache (struct vnode*) ;
 scalar_t__ vnode_mount (struct vnode*) ;
 int vnode_vtype (struct vnode*) ;

__attribute__((used)) static int
fuse_vnop_link(struct vop_link_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct vnode *tdvp = ap->a_tdvp;
 struct componentname *cnp = ap->a_cnp;

 struct vattr *vap = VTOVA(vp);

 struct fuse_dispatcher fdi;
 struct fuse_entry_out *feo;
 struct fuse_link_in fli;

 int err;

 if (fuse_isdeadfs(vp)) {
  return ENXIO;
 }
 if (vnode_mount(tdvp) != vnode_mount(vp)) {
  return EXDEV;
 }







 if (vap != ((void*)0) && vap->va_nlink >= FUSE_LINK_MAX)
  return EMLINK;
 fli.oldnodeid = VTOI(vp);

 fdisp_init(&fdi, 0);
 fuse_internal_newentry_makerequest(vnode_mount(tdvp), VTOI(tdvp), cnp,
     FUSE_LINK, &fli, sizeof(fli), &fdi);
 if ((err = fdisp_wait_answ(&fdi))) {
  goto out;
 }
 feo = fdi.answ;

 err = fuse_internal_checkentry(feo, vnode_vtype(vp));
 if (!err) {




  fuse_vnode_clear_attr_cache(tdvp);
  fuse_internal_cache_attrs(vp, &feo->attr, feo->attr_valid,
   feo->attr_valid_nsec, ((void*)0));
 }
out:
 fdisp_destroy(&fdi);
 return err;
}
