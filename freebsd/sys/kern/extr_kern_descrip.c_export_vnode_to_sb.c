
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct export_fd_buf {scalar_t__ remainder; int * fdp; int flags; int kif; } ;


 int FILEDESC_SLOCK (int *) ;
 int FILEDESC_SUNLOCK (int *) ;
 int export_kinfo_to_sb (struct export_fd_buf*) ;
 int export_vnode_to_kinfo (struct vnode*,int,int,int *,int ) ;

__attribute__((used)) static int
export_vnode_to_sb(struct vnode *vp, int fd, int fflags,
    struct export_fd_buf *efbuf)
{
 int error;

 if (efbuf->remainder == 0)
  return (0);
 if (efbuf->fdp != ((void*)0))
  FILEDESC_SUNLOCK(efbuf->fdp);
 export_vnode_to_kinfo(vp, fd, fflags, &efbuf->kif, efbuf->flags);
 error = export_kinfo_to_sb(efbuf);
 if (efbuf->fdp != ((void*)0))
  FILEDESC_SLOCK(efbuf->fdp);
 return (error);
}
