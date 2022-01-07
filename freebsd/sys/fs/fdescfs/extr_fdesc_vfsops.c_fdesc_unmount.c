
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {struct fdescmount* mnt_data; } ;
struct fdescmount {int flags; } ;


 int FMNT_UNMOUNTF ;
 int FORCECLOSE ;
 int MNT_FORCE ;
 int M_FDESCMNT ;
 int curthread ;
 int fdesc_hashmtx ;
 int free (struct fdescmount*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vflush (struct mount*,int,int,int ) ;

__attribute__((used)) static int
fdesc_unmount(struct mount *mp, int mntflags)
{
 struct fdescmount *fmp;
 int error, flags;

 flags = 0;
 fmp = mp->mnt_data;
 if (mntflags & MNT_FORCE) {

  mtx_lock(&fdesc_hashmtx);
  fmp->flags |= FMNT_UNMOUNTF;
  mtx_unlock(&fdesc_hashmtx);
  flags |= FORCECLOSE;
 }
 if ((error = vflush(mp, 1, flags, curthread)) != 0)
  return (error);




 mp->mnt_data = ((void*)0);
 free(fmp, M_FDESCMNT);
 return (0);
}
