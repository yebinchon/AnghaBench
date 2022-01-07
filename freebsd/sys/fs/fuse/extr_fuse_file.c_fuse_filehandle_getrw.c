
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct fuse_filehandle {int dummy; } ;
typedef int pid_t ;


 int FREAD ;
 int FWRITE ;
 int fuse_filehandle_get (struct vnode*,int,struct fuse_filehandle**,struct ucred*,int ) ;

int
fuse_filehandle_getrw(struct vnode *vp, int fflag,
    struct fuse_filehandle **fufhp, struct ucred *cred, pid_t pid)
{
 int err;

 err = fuse_filehandle_get(vp, fflag, fufhp, cred, pid);
 if (err)
  err = fuse_filehandle_get(vp, FREAD | FWRITE, fufhp, cred, pid);
 return err;
}
