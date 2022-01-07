
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_mount; } ;
struct statfs {scalar_t__ f_ffree; int f_bavail; int f_bsize; int f_bfree; int f_blocks; } ;


 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int NFSEXITCODE (int) ;
 int VFS_STATFS (int ,struct statfs*) ;
 int free (struct statfs*,int ) ;
 struct statfs* malloc (int,int ,int) ;
 scalar_t__ nfsrv_devidcnt ;
 int nfsrv_pnfsstatfs (struct statfs*,int ) ;

int
nfsvno_statfs(struct vnode *vp, struct statfs *sf)
{
 struct statfs *tsf;
 int error;

 tsf = ((void*)0);
 if (nfsrv_devidcnt > 0) {

  tsf = malloc(sizeof(*tsf), M_TEMP, M_WAITOK | M_ZERO);
  error = nfsrv_pnfsstatfs(tsf, vp->v_mount);
  if (error != 0) {
   free(tsf, M_TEMP);
   tsf = ((void*)0);
  }
 }
 error = VFS_STATFS(vp->v_mount, sf);
 if (error == 0) {
  if (tsf != ((void*)0)) {
   sf->f_blocks = tsf->f_blocks;
   sf->f_bavail = tsf->f_bavail;
   sf->f_bfree = tsf->f_bfree;
   sf->f_bsize = tsf->f_bsize;
  }







  if (sf->f_bavail < 0)
   sf->f_bavail = 0;
  if (sf->f_ffree < 0)
   sf->f_ffree = 0;
 }
 free(tsf, M_TEMP);
 NFSEXITCODE(error);
 return (error);
}
