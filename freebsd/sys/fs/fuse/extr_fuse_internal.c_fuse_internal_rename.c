
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct fuse_rename_in {int newdir; } ;
struct fuse_dispatcher {struct fuse_rename_in* indata; } ;
struct componentname {int cn_namelen; int cn_nameptr; int cn_cred; int cn_thread; } ;


 int FUSE_RENAME ;
 int VTOI (struct vnode*) ;
 int fdisp_destroy (struct fuse_dispatcher*) ;
 int fdisp_init (struct fuse_dispatcher*,int) ;
 int fdisp_make_vp (struct fuse_dispatcher*,int ,struct vnode*,int ,int ) ;
 int fdisp_wait_answ (struct fuse_dispatcher*) ;
 int memcpy (char*,int ,int) ;

int
fuse_internal_rename(struct vnode *fdvp,
    struct componentname *fcnp,
    struct vnode *tdvp,
    struct componentname *tcnp)
{
 struct fuse_dispatcher fdi;
 struct fuse_rename_in *fri;
 int err = 0;

 fdisp_init(&fdi, sizeof(*fri) + fcnp->cn_namelen + tcnp->cn_namelen + 2);
 fdisp_make_vp(&fdi, FUSE_RENAME, fdvp, tcnp->cn_thread, tcnp->cn_cred);

 fri = fdi.indata;
 fri->newdir = VTOI(tdvp);
 memcpy((char *)fdi.indata + sizeof(*fri), fcnp->cn_nameptr,
     fcnp->cn_namelen);
 ((char *)fdi.indata)[sizeof(*fri) + fcnp->cn_namelen] = '\0';
 memcpy((char *)fdi.indata + sizeof(*fri) + fcnp->cn_namelen + 1,
     tcnp->cn_nameptr, tcnp->cn_namelen);
 ((char *)fdi.indata)[sizeof(*fri) + fcnp->cn_namelen +
     tcnp->cn_namelen + 1] = '\0';

 err = fdisp_wait_answ(&fdi);
 fdisp_destroy(&fdi);
 return err;
}
