
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int td_ucred; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct nfs_args {int dummy; } ;
struct mount {int dummy; } ;


 int M_WAITOK ;
 int NFS_DEFAULT_NAMETIMEO ;
 int NFS_DEFAULT_NEGNAMETIMEO ;
 int mountnfs (struct nfs_args*,struct mount*,struct sockaddr*,char*,int *,int ,char*,int,int *,int ,struct vnode**,int ,struct thread*,int ,int ,int ) ;
 int printf (char*,char*,int) ;
 struct sockaddr* sodupsockaddr (struct sockaddr*,int ) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static int
nfs_mountdiskless(char *path,
    struct sockaddr_in *sin, struct nfs_args *args, struct thread *td,
    struct vnode **vpp, struct mount *mp)
{
 struct sockaddr *nam;
 int dirlen, error;
 char *dirpath;





 dirpath = strchr(path, ':');
 if (dirpath != ((void*)0))
  dirlen = strlen(++dirpath);
 else
  dirlen = 0;
 nam = sodupsockaddr((struct sockaddr *)sin, M_WAITOK);
 if ((error = mountnfs(args, mp, nam, path, ((void*)0), 0, dirpath, dirlen,
     ((void*)0), 0, vpp, td->td_ucred, td, NFS_DEFAULT_NAMETIMEO,
     NFS_DEFAULT_NEGNAMETIMEO, 0)) != 0) {
  printf("nfs_mountroot: mount %s on /: %d\n", path, error);
  return (error);
 }
 return (0);
}
