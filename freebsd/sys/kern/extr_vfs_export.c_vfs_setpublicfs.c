
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct netexport {int dummy; } ;
struct TYPE_4__ {int f_fsid; } ;
struct mount {TYPE_1__ mnt_stat; } ;
struct export_args {int * ex_indexfile; } ;
struct TYPE_6__ {int fh_fid; int fh_fsid; } ;
struct TYPE_5__ {int np_valid; char* np_index; struct mount* np_mount; TYPE_3__ np_handle; } ;


 int EBUSY ;
 int EINVAL ;
 int LK_EXCLUSIVE ;
 scalar_t__ MAXNAMLEN ;
 int M_TEMP ;
 int M_WAITOK ;
 int VFS_ROOT (struct mount*,int ,struct vnode**) ;
 int VOP_VPTOFH (struct vnode*,int *) ;
 int bzero (TYPE_3__*,int) ;
 int copyinstr (int *,char*,scalar_t__,size_t*) ;
 int free (char*,int ) ;
 char* malloc (scalar_t__,int ,int ) ;
 TYPE_2__ nfs_pub ;
 int vput (struct vnode*) ;

int
vfs_setpublicfs(struct mount *mp, struct netexport *nep,
    struct export_args *argp)
{
 int error;
 struct vnode *rvp;
 char *cp;






 if (mp == ((void*)0)) {
  if (nfs_pub.np_valid) {
   nfs_pub.np_valid = 0;
   if (nfs_pub.np_index != ((void*)0)) {
    free(nfs_pub.np_index, M_TEMP);
    nfs_pub.np_index = ((void*)0);
   }
  }
  return (0);
 }




 if (nfs_pub.np_valid != 0 && mp != nfs_pub.np_mount)
  return (EBUSY);




 bzero(&nfs_pub.np_handle, sizeof(nfs_pub.np_handle));
 nfs_pub.np_handle.fh_fsid = mp->mnt_stat.f_fsid;

 if ((error = VFS_ROOT(mp, LK_EXCLUSIVE, &rvp)))
  return (error);

 if ((error = VOP_VPTOFH(rvp, &nfs_pub.np_handle.fh_fid)))
  return (error);

 vput(rvp);




 if (argp->ex_indexfile != ((void*)0)) {
  if (nfs_pub.np_index == ((void*)0))
   nfs_pub.np_index = malloc(MAXNAMLEN + 1, M_TEMP,
       M_WAITOK);
  error = copyinstr(argp->ex_indexfile, nfs_pub.np_index,
      MAXNAMLEN, (size_t *)0);
  if (!error) {



   for (cp = nfs_pub.np_index; *cp; cp++) {
    if (*cp == '/') {
     error = EINVAL;
     break;
    }
   }
  }
  if (error) {
   free(nfs_pub.np_index, M_TEMP);
   nfs_pub.np_index = ((void*)0);
   return (error);
  }
 }

 nfs_pub.np_mount = mp;
 nfs_pub.np_valid = 1;
 return (0);
}
