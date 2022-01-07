
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct fuse_filehandle {int dummy; } ;
typedef int pid_t ;


 int FEXEC ;
 int FREAD ;
 int fuse_filehandle_get (struct vnode*,int ,struct fuse_filehandle**,struct ucred*,int ) ;

__attribute__((used)) static int
fuse_filehandle_get_dir(struct vnode *vp, struct fuse_filehandle **fufhp,
 struct ucred *cred, pid_t pid)
{
 if (fuse_filehandle_get(vp, FREAD, fufhp, cred, pid) == 0)
  return 0;
 return fuse_filehandle_get(vp, FEXEC, fufhp, cred, pid);
}
