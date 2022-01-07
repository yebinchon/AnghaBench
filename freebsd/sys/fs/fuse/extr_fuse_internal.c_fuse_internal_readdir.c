
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct vnode {int v_mount; } ;
struct uio {scalar_t__ uio_offset; int uio_resid; } ;
struct fuse_read_in {int size; int offset; int fh; } ;
struct fuse_iov {int dummy; } ;
struct fuse_filehandle {int fh_id; } ;
struct fuse_dispatcher {int iosize; int answ; struct fuse_read_in* indata; } ;
typedef scalar_t__ off_t ;
struct TYPE_2__ {int max_read; } ;


 int FUSE_READDIR ;
 int MIN (int ,int ) ;
 int fdisp_destroy (struct fuse_dispatcher*) ;
 int fdisp_init (struct fuse_dispatcher*,int ) ;
 int fdisp_make_vp (struct fuse_dispatcher*,int ,struct vnode*,int *,int *) ;
 int fdisp_refresh_vp (struct fuse_dispatcher*,int ,struct vnode*,int *,int *) ;
 int fdisp_wait_answ (struct fuse_dispatcher*) ;
 TYPE_1__* fuse_get_mpdata (int ) ;
 int fuse_internal_readdir_processdata (struct uio*,scalar_t__,int*,int ,int ,int,struct fuse_iov*,int*,int **) ;
 int uio_offset (struct uio*) ;
 scalar_t__ uio_resid (struct uio*) ;

int
fuse_internal_readdir(struct vnode *vp,
    struct uio *uio,
    off_t startoff,
    struct fuse_filehandle *fufh,
    struct fuse_iov *cookediov,
    int *ncookies,
    u_long *cookies)
{
 int err = 0;
 struct fuse_dispatcher fdi;
 struct fuse_read_in *fri = ((void*)0);
 int fnd_start;

 if (uio_resid(uio) == 0)
  return 0;
 fdisp_init(&fdi, 0);
 fnd_start = 0;
 if (uio->uio_offset == startoff)
  fnd_start = 1;
 while (uio_resid(uio) > 0) {
  fdi.iosize = sizeof(*fri);
  if (fri == ((void*)0))
   fdisp_make_vp(&fdi, FUSE_READDIR, vp, ((void*)0), ((void*)0));
  else
   fdisp_refresh_vp(&fdi, FUSE_READDIR, vp, ((void*)0), ((void*)0));

  fri = fdi.indata;
  fri->fh = fufh->fh_id;
  fri->offset = uio_offset(uio);
  fri->size = MIN(uio->uio_resid,
      fuse_get_mpdata(vp->v_mount)->max_read);

  if ((err = fdisp_wait_answ(&fdi)))
   break;
  if ((err = fuse_internal_readdir_processdata(uio, startoff,
      &fnd_start, fri->size, fdi.answ, fdi.iosize, cookediov,
      ncookies, &cookies)))
   break;
 }

 fdisp_destroy(&fdi);
 return ((err == -1) ? 0 : err);
}
