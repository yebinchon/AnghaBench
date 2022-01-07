
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unionfs_mount {int dummy; } ;
struct mount {int mnt_nvnodelistsize; int * mnt_data; } ;


 int FORCECLOSE ;
 int MNT_FORCE ;
 struct unionfs_mount* MOUNTTOUNIONFSMOUNT (struct mount*) ;
 int M_UNIONFSMNT ;
 int UNIONFSDEBUG (char*,void*) ;
 int curthread ;
 int free (struct unionfs_mount*,int ) ;
 int vflush (struct mount*,int,int,int ) ;

__attribute__((used)) static int
unionfs_unmount(struct mount *mp, int mntflags)
{
 struct unionfs_mount *ump;
 int error;
 int num;
 int freeing;
 int flags;

 UNIONFSDEBUG("unionfs_unmount: mp = %p\n", (void *)mp);

 ump = MOUNTTOUNIONFSMOUNT(mp);
 flags = 0;

 if (mntflags & MNT_FORCE)
  flags |= FORCECLOSE;


 for (freeing = 0; (error = vflush(mp, 1, flags, curthread)) != 0;) {
  num = mp->mnt_nvnodelistsize;
  if (num == freeing)
   break;
  freeing = num;
 }

 if (error)
  return (error);

 free(ump, M_UNIONFSMNT);
 mp->mnt_data = ((void*)0);

 return (0);
}
