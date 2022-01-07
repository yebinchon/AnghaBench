
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int * mnt_data; } ;
struct fuse_dispatcher {int dummy; } ;
struct fuse_data {struct cdev* fdev; int * mp; struct vnode* vroot; } ;
struct cdev {int dummy; } ;


 int FORCECLOSE ;
 int FUSE_DESTROY ;
 int FUSE_LOCK () ;
 int FUSE_UNLOCK () ;
 int MNT_FORCE ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 struct thread* curthread ;
 int dev_rel (struct cdev*) ;
 scalar_t__ fdata_get_dead (struct fuse_data*) ;
 int fdata_set_dead (struct fuse_data*) ;
 int fdata_trydestroy (struct fuse_data*) ;
 int fdisp_destroy (struct fuse_dispatcher*) ;
 int fdisp_init (struct fuse_dispatcher*,int ) ;
 int fdisp_make (struct fuse_dispatcher*,int ,struct mount*,int ,struct thread*,int *) ;
 int fdisp_wait_answ (struct fuse_dispatcher*) ;
 scalar_t__ fsess_isimpl (struct mount*,int ) ;
 struct fuse_data* fuse_get_mpdata (struct mount*) ;
 int panic (char*) ;
 int vflush (struct mount*,int ,int,struct thread*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
fuse_vfsop_unmount(struct mount *mp, int mntflags)
{
 int err = 0;
 int flags = 0;

 struct cdev *fdev;
 struct fuse_data *data;
 struct fuse_dispatcher fdi;
 struct thread *td = curthread;

 if (mntflags & MNT_FORCE) {
  flags |= FORCECLOSE;
 }
 data = fuse_get_mpdata(mp);
 if (!data) {
  panic("no private data for mount point?");
 }

 FUSE_LOCK();
 if (data->vroot != ((void*)0)) {
  struct vnode *vroot = data->vroot;

  data->vroot = ((void*)0);
  FUSE_UNLOCK();
  vrele(vroot);
 } else
  FUSE_UNLOCK();
 err = vflush(mp, 0, flags, td);
 if (err) {
  return err;
 }
 if (fdata_get_dead(data)) {
  goto alreadydead;
 }
 if (fsess_isimpl(mp, FUSE_DESTROY)) {
  fdisp_init(&fdi, 0);
  fdisp_make(&fdi, FUSE_DESTROY, mp, 0, td, ((void*)0));

  (void)fdisp_wait_answ(&fdi);
  fdisp_destroy(&fdi);
 }

 fdata_set_dead(data);

alreadydead:
 FUSE_LOCK();
 data->mp = ((void*)0);
 fdev = data->fdev;
 fdata_trydestroy(data);
 FUSE_UNLOCK();

 MNT_ILOCK(mp);
 mp->mnt_data = ((void*)0);
 MNT_IUNLOCK(mp);

 dev_rel(fdev);

 return 0;
}
