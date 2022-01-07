
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct nameidata {struct vnode* ni_vp; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AUDITVNODE1 ;
 int EINVAL ;
 size_t IOSIZE_MAX ;
 int LOCKLEAF ;
 int LOCKSHARED ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_AT (struct nameidata*,int ,int,int,char const*,int,struct thread*) ;
 int NOFOLLOW ;
 int kern_readlink_vp (struct vnode*,char*,int,size_t,struct thread*) ;
 int namei (struct nameidata*) ;
 int vput (struct vnode*) ;

int
kern_readlinkat(struct thread *td, int fd, const char *path,
    enum uio_seg pathseg, char *buf, enum uio_seg bufseg, size_t count)
{
 struct vnode *vp;
 struct nameidata nd;
 int error;

 if (count > IOSIZE_MAX)
  return (EINVAL);

 NDINIT_AT(&nd, LOOKUP, NOFOLLOW | LOCKSHARED | LOCKLEAF | AUDITVNODE1,
     pathseg, path, fd, td);

 if ((error = namei(&nd)) != 0)
  return (error);
 NDFREE(&nd, NDF_ONLY_PNBUF);
 vp = nd.ni_vp;

 error = kern_readlink_vp(vp, buf, bufseg, count, td);
 vput(vp);

 return (error);
}
