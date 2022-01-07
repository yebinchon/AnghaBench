
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct vop_bmap_args {int a_bn; int* a_bnp; int* a_runp; int* a_runb; struct bufobj** a_bop; struct vnode* a_vp; } ;
struct bufobj {int dummy; } ;
struct vnode {struct bufobj v_bufobj; TYPE_1__* v_mount; } ;
struct thread {int td_ucred; } ;
struct mount {int dummy; } ;
struct fuse_dispatcher {struct fuse_bmap_out* answ; struct fuse_bmap_in* indata; } ;
struct fuse_data {int max_readahead_blocks; } ;
struct fuse_bmap_out {int block; } ;
struct fuse_bmap_in {int block; int blocksize; } ;
typedef int off_t ;
typedef int daddr_t ;
struct TYPE_2__ {int mnt_iosize_max; } ;


 int ENOSYS ;
 int ENXIO ;
 int FUSE_BMAP ;
 int MAX (int ,int) ;
 int MIN (int,int) ;
 int btodb (int) ;
 struct thread* curthread ;
 int fdisp_destroy (struct fuse_dispatcher*) ;
 int fdisp_init (struct fuse_dispatcher*,int) ;
 int fdisp_make_vp (struct fuse_dispatcher*,int ,struct vnode*,struct thread*,int ) ;
 int fdisp_wait_answ (struct fuse_dispatcher*) ;
 scalar_t__ fsess_isimpl (struct mount*,int ) ;
 int fsess_set_notimpl (struct mount*,int ) ;
 struct fuse_data* fuse_get_mpdata (struct mount*) ;
 int fuse_iosize (struct vnode*) ;
 scalar_t__ fuse_isdeadfs (struct vnode*) ;
 int fuse_vnode_size (struct vnode*,int*,int ,struct thread*) ;
 struct mount* vnode_mount (struct vnode*) ;

__attribute__((used)) static int
fuse_vnop_bmap(struct vop_bmap_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct bufobj **bo = ap->a_bop;
 struct thread *td = curthread;
 struct mount *mp;
 struct fuse_dispatcher fdi;
 struct fuse_bmap_in *fbi;
 struct fuse_bmap_out *fbo;
 struct fuse_data *data;
 uint64_t biosize;
 off_t filesize;
 daddr_t lbn = ap->a_bn;
 daddr_t *pbn = ap->a_bnp;
 int *runp = ap->a_runp;
 int *runb = ap->a_runb;
 int error = 0;
 int maxrun;

 if (fuse_isdeadfs(vp)) {
  return ENXIO;
 }

 mp = vnode_mount(vp);
 data = fuse_get_mpdata(mp);
 biosize = fuse_iosize(vp);
 maxrun = MIN(vp->v_mount->mnt_iosize_max / biosize - 1,
  data->max_readahead_blocks);

 if (bo != ((void*)0))
  *bo = &vp->v_bufobj;
 if (runb != ((void*)0))
  *runb = MIN(lbn, maxrun);
 if (runp != ((void*)0)) {
  error = fuse_vnode_size(vp, &filesize, td->td_ucred, td);
  if (error == 0)
   *runp = MIN(MAX(0, filesize / (off_t)biosize - lbn - 1),
        maxrun);
  else
   *runp = 0;
 }

 if (fsess_isimpl(mp, FUSE_BMAP)) {
  fdisp_init(&fdi, sizeof(*fbi));
  fdisp_make_vp(&fdi, FUSE_BMAP, vp, td, td->td_ucred);
  fbi = fdi.indata;
  fbi->block = lbn;
  fbi->blocksize = biosize;
  error = fdisp_wait_answ(&fdi);
  if (error == ENOSYS) {
   fdisp_destroy(&fdi);
   fsess_set_notimpl(mp, FUSE_BMAP);
   error = 0;
  } else {
   fbo = fdi.answ;
   if (error == 0 && pbn != ((void*)0))
    *pbn = fbo->block;
   fdisp_destroy(&fdi);
   return error;
  }
 }


 if (pbn != ((void*)0))
  *pbn = lbn * btodb(biosize);
 return (error);
}
