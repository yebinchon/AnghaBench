
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct vnode {scalar_t__ v_type; scalar_t__ v_mount; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
typedef scalar_t__ off_t ;


 int EINVAL ;
 int EISDIR ;
 scalar_t__ INT64_MAX ;
 scalar_t__ VDIR ;
 int VOP_COPY_FILE_RANGE (struct vnode*,scalar_t__*,struct vnode*,scalar_t__*,size_t*,unsigned int,struct ucred*,struct ucred*,struct thread*) ;
 scalar_t__ VREG ;
 int vn_generic_copy_file_range (struct vnode*,scalar_t__*,struct vnode*,scalar_t__*,size_t*,unsigned int,struct ucred*,struct ucred*,struct thread*) ;

int
vn_copy_file_range(struct vnode *invp, off_t *inoffp, struct vnode *outvp,
    off_t *outoffp, size_t *lenp, unsigned int flags, struct ucred *incred,
    struct ucred *outcred, struct thread *fsize_td)
{
 int error;
 size_t len;
 uint64_t uvalin, uvalout;

 len = *lenp;
 *lenp = 0;
 error = 0;


 uvalin = *inoffp;
 uvalin += len;
 uvalout = *outoffp;
 uvalout += len;
 if (invp->v_type == VDIR || outvp->v_type == VDIR)
  error = EISDIR;
 else if (*inoffp < 0 || uvalin > INT64_MAX || uvalin <
     (uint64_t)*inoffp || *outoffp < 0 || uvalout > INT64_MAX ||
     uvalout < (uint64_t)*outoffp || invp->v_type != VREG ||
     outvp->v_type != VREG)
  error = EINVAL;
 if (error != 0)
  goto out;






 *lenp = len;
 if (invp->v_mount == outvp->v_mount)
  error = VOP_COPY_FILE_RANGE(invp, inoffp, outvp, outoffp,
      lenp, flags, incred, outcred, fsize_td);
 else
  error = vn_generic_copy_file_range(invp, inoffp, outvp,
      outoffp, lenp, flags, incred, outcred, fsize_td);
out:
 return (error);
}
