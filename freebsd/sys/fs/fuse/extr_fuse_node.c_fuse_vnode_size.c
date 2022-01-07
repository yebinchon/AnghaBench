
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {scalar_t__ va_size; } ;
struct fuse_vnode_data {int flag; TYPE_1__ cached_attrs; } ;
typedef scalar_t__ off_t ;


 int FN_SIZECHANGE ;
 scalar_t__ VNOVAL ;
 struct fuse_vnode_data* VTOFUD (struct vnode*) ;
 int * VTOVA (struct vnode*) ;
 int fuse_internal_do_getattr (struct vnode*,int *,struct ucred*,struct thread*) ;

int
fuse_vnode_size(struct vnode *vp, off_t *filesize, struct ucred *cred,
 struct thread *td)
{
 struct fuse_vnode_data *fvdat = VTOFUD(vp);
 int error = 0;

 if (!(fvdat->flag & FN_SIZECHANGE) &&
  (VTOVA(vp) == ((void*)0) || fvdat->cached_attrs.va_size == VNOVAL))
  error = fuse_internal_do_getattr(vp, ((void*)0), cred, td);

 if (!error)
  *filesize = fvdat->cached_attrs.va_size;

 return error;
}
