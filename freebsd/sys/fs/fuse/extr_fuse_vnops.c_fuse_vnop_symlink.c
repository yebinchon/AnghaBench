
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_symlink_args {char* a_target; struct componentname* a_cnp; struct vnode** a_vpp; struct vnode* a_dvp; } ;
struct vnode {int dummy; } ;
struct fuse_dispatcher {char* indata; } ;
struct componentname {size_t cn_namelen; char const* cn_nameptr; } ;


 int ENXIO ;
 int FUSE_SYMLINK ;
 int VLNK ;
 int curthread ;
 int fdisp_destroy (struct fuse_dispatcher*) ;
 int fdisp_init (struct fuse_dispatcher*,size_t) ;
 int fdisp_make_vp (struct fuse_dispatcher*,int ,struct vnode*,int ,int *) ;
 int fuse_internal_newentry_core (struct vnode*,struct vnode**,struct componentname*,int ,struct fuse_dispatcher*) ;
 scalar_t__ fuse_isdeadfs (struct vnode*) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static int
fuse_vnop_symlink(struct vop_symlink_args *ap)
{
 struct vnode *dvp = ap->a_dvp;
 struct vnode **vpp = ap->a_vpp;
 struct componentname *cnp = ap->a_cnp;
 const char *target = ap->a_target;

 struct fuse_dispatcher fdi;

 int err;
 size_t len;

 if (fuse_isdeadfs(dvp)) {
  return ENXIO;
 }
 len = strlen(target) + 1;
 fdisp_init(&fdi, len + cnp->cn_namelen + 1);
 fdisp_make_vp(&fdi, FUSE_SYMLINK, dvp, curthread, ((void*)0));

 memcpy(fdi.indata, cnp->cn_nameptr, cnp->cn_namelen);
 ((char *)fdi.indata)[cnp->cn_namelen] = '\0';
 memcpy((char *)fdi.indata + cnp->cn_namelen + 1, target, len);

 err = fuse_internal_newentry_core(dvp, vpp, cnp, VLNK, &fdi);
 fdisp_destroy(&fdi);
 return err;
}
