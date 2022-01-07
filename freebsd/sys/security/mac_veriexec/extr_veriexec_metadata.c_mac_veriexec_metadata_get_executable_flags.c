
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct vattr {int va_gen; int va_fileid; int va_fsid; } ;
struct ucred {int dummy; } ;
struct proc {struct vnode* p_textvp; } ;


 int EINVAL ;
 int VERIEXEC_FILES_FIRST ;
 int VOP_GETATTR (struct vnode*,struct vattr*,struct ucred*) ;
 int mac_veriexec_metadata_get_file_flags (int ,int ,int ,int*,int) ;

int
mac_veriexec_metadata_get_executable_flags(struct ucred *cred, struct proc *p,
    int *flags, int check_files)
{
 struct vnode *proc_vn;
 struct vattr vap;
 int error;


 proc_vn = p->p_textvp;
 if (proc_vn == ((void*)0))
  return EINVAL;


 error = VOP_GETATTR(proc_vn, &vap, cred);
 if (error)
  return error;

 error = mac_veriexec_metadata_get_file_flags(vap.va_fsid,
     vap.va_fileid, vap.va_gen, flags,
     (check_files == VERIEXEC_FILES_FIRST));

 return (error);
}
