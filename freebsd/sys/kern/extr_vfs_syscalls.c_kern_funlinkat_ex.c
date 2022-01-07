
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
typedef int ino_t ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AT_REMOVEDIR ;
 int EINVAL ;
 int UIO_USERSPACE ;
 int kern_frmdirat (struct thread*,int,char const*,int,int ,int ) ;
 int kern_funlinkat (struct thread*,int,char const*,int,int ,int ,int ) ;

__attribute__((used)) static int
kern_funlinkat_ex(struct thread *td, int dfd, const char *path, int fd,
    int flag, enum uio_seg pathseg, ino_t oldinum)
{

 if ((flag & ~AT_REMOVEDIR) != 0)
  return (EINVAL);

 if ((flag & AT_REMOVEDIR) != 0)
  return (kern_frmdirat(td, dfd, path, fd, UIO_USERSPACE, 0));

 return (kern_funlinkat(td, dfd, path, fd, UIO_USERSPACE, 0, 0));
}
