
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct statfs {int f_bsize; int f_namemax; int f_ffree; int f_files; int f_bavail; int f_bfree; int f_blocks; } ;
struct mount {int dummy; } ;
struct TYPE_2__ {int frsize; int namelen; int ffree; int files; int bavail; int bfree; int blocks; } ;
struct fuse_statfs_out {TYPE_1__ st; } ;
struct fuse_dispatcher {struct fuse_statfs_out* answ; } ;
struct fuse_data {int dataflags; } ;


 int ENOTCONN ;
 int FSESS_INITED ;
 int FUSE_ROOT_ID ;
 int FUSE_STATFS ;
 int S_BLKSIZE ;
 int fdisp_destroy (struct fuse_dispatcher*) ;
 int fdisp_init (struct fuse_dispatcher*,int ) ;
 int fdisp_make (struct fuse_dispatcher*,int ,struct mount*,int ,int *,int *) ;
 int fdisp_wait_answ (struct fuse_dispatcher*) ;
 struct fuse_data* fuse_get_mpdata (struct mount*) ;

__attribute__((used)) static int
fuse_vfsop_statfs(struct mount *mp, struct statfs *sbp)
{
 struct fuse_dispatcher fdi;
 int err = 0;

 struct fuse_statfs_out *fsfo;
 struct fuse_data *data;

 data = fuse_get_mpdata(mp);

 if (!(data->dataflags & FSESS_INITED))
  goto fake;

 fdisp_init(&fdi, 0);
 fdisp_make(&fdi, FUSE_STATFS, mp, FUSE_ROOT_ID, ((void*)0), ((void*)0));
 err = fdisp_wait_answ(&fdi);
 if (err) {
  fdisp_destroy(&fdi);
  if (err == ENOTCONN) {





   goto fake;
  }
  return err;
 }
 fsfo = fdi.answ;

 sbp->f_blocks = fsfo->st.blocks;
 sbp->f_bfree = fsfo->st.bfree;
 sbp->f_bavail = fsfo->st.bavail;
 sbp->f_files = fsfo->st.files;
 sbp->f_ffree = fsfo->st.ffree;
 sbp->f_namemax = fsfo->st.namelen;
 sbp->f_bsize = fsfo->st.frsize;

 fdisp_destroy(&fdi);
 return 0;

fake:
 sbp->f_blocks = 0;
 sbp->f_bfree = 0;
 sbp->f_bavail = 0;
 sbp->f_files = 0;
 sbp->f_ffree = 0;
 sbp->f_namemax = 0;
 sbp->f_bsize = S_BLKSIZE;

 return 0;
}
