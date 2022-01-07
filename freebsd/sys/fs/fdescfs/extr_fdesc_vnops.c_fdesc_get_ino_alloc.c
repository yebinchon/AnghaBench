
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct fdesc_get_ino_args {int td; int fp; int ix; int fd_fd; int ftype; } ;


 int fdesc_allocvp (int ,int ,int ,struct mount*,struct vnode**) ;
 int fdrop (int ,int ) ;

__attribute__((used)) static int
fdesc_get_ino_alloc(struct mount *mp, void *arg, int lkflags,
    struct vnode **rvp)
{
 struct fdesc_get_ino_args *a;
 int error;

 a = arg;
 error = fdesc_allocvp(a->ftype, a->fd_fd, a->ix, mp, rvp);
 fdrop(a->fp, a->td);
 return (error);
}
