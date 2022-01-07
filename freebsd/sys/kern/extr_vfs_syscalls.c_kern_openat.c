
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; } ;
struct thread {int td_dupfd; int* td_retval; int td_ucred; struct proc* td_proc; } ;
struct proc {struct filedesc* p_fd; } ;
struct filecaps {int dummy; } ;
struct nameidata {int ni_lcf; struct filecaps ni_filecaps; struct vnode* ni_vp; } ;
struct filedesc {int fd_cmask; } ;
struct file {int f_flag; int f_seqcount; int * f_ops; struct vnode* f_vnode; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef int cap_rights_t ;


 int ALLPERMS ;
 int AUDITVNODE1 ;
 int AUDIT_ARG_FFLAGS (int) ;
 int AUDIT_ARG_MODE (int) ;
 int CAP_LOOKUP ;
 int DTYPE_VNODE ;
 int EINVAL ;
 int ENODEV ;
 int ENXIO ;
 int FFLAGS (int) ;
 int FHASLOCK ;
 int FMASK ;
 int FOLLOW ;
 int KASSERT (int,char*) ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATRIGHTS (struct nameidata*,int ,int,int,char const*,int,int *,struct thread*) ;
 int NI_LCF_STRICTRELATIVE ;
 int O_ACCMODE ;
 int O_EXEC ;
 int O_TRUNC ;
 int S_ISTXT ;
 scalar_t__ VFIFO ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int badfileops ;
 int cap_rights_init (int *,int ) ;
 int dupfdopen (struct thread*,struct filedesc*,scalar_t__,int,int,int*) ;
 int falloc_noinstall (struct thread*,struct file**) ;
 int fdrop (struct file*,struct thread*) ;
 int filecaps_free (struct filecaps*) ;
 int finit (struct file*,int,int ,struct vnode*,int *) ;
 int finstall (struct thread*,struct file*,int*,int,struct filecaps*) ;
 int flags_to_rights (int,int *) ;
 int fo_truncate (struct file*,int ,int ,struct thread*) ;
 int vn_open (struct nameidata*,int*,int,struct file*) ;
 int vnops ;

int
kern_openat(struct thread *td, int fd, const char *path, enum uio_seg pathseg,
    int flags, int mode)
{
 struct proc *p = td->td_proc;
 struct filedesc *fdp = p->p_fd;
 struct file *fp;
 struct vnode *vp;
 struct nameidata nd;
 cap_rights_t rights;
 int cmode, error, indx;

 indx = -1;

 AUDIT_ARG_FFLAGS(flags);
 AUDIT_ARG_MODE(mode);
 cap_rights_init(&rights, CAP_LOOKUP);
 flags_to_rights(flags, &rights);




 if (flags & O_EXEC) {
  if (flags & O_ACCMODE)
   return (EINVAL);
 } else if ((flags & O_ACCMODE) == O_ACCMODE) {
  return (EINVAL);
 } else {
  flags = FFLAGS(flags);
 }





 error = falloc_noinstall(td, &fp);
 if (error != 0)
  return (error);





 fp->f_flag = flags & FMASK;
 cmode = ((mode & ~fdp->fd_cmask) & ALLPERMS) & ~S_ISTXT;
 NDINIT_ATRIGHTS(&nd, LOOKUP, FOLLOW | AUDITVNODE1, pathseg, path, fd,
     &rights, td);
 td->td_dupfd = -1;
 error = vn_open(&nd, &flags, cmode, fp);
 if (error != 0) {





  if (error == ENXIO && fp->f_ops != &badfileops)
   goto success;
  if ((nd.ni_lcf & NI_LCF_STRICTRELATIVE) == 0 &&
      (error == ENODEV || error == ENXIO) &&
      td->td_dupfd >= 0) {
   error = dupfdopen(td, fdp, td->td_dupfd, flags, error,
       &indx);
   if (error == 0)
    goto success;
  }

  goto bad;
 }
 td->td_dupfd = 0;
 NDFREE(&nd, NDF_ONLY_PNBUF);
 vp = nd.ni_vp;






 fp->f_vnode = vp;




 if (fp->f_ops == &badfileops) {
  KASSERT(vp->v_type != VFIFO, ("Unexpected fifo."));
  fp->f_seqcount = 1;
  finit(fp, (flags & FMASK) | (fp->f_flag & FHASLOCK),
      DTYPE_VNODE, vp, &vnops);
 }

 VOP_UNLOCK(vp, 0);
 if (flags & O_TRUNC) {
  error = fo_truncate(fp, 0, td->td_ucred, td);
  if (error != 0)
   goto bad;
 }
success:



 if (indx == -1) {
  struct filecaps *fcaps;






   fcaps = ((void*)0);
  error = finstall(td, fp, &indx, flags, fcaps);

  if (error != 0) {
   filecaps_free(&nd.ni_filecaps);
   goto bad;
  }
 } else {
  filecaps_free(&nd.ni_filecaps);
 }





 fdrop(fp, td);
 td->td_retval[0] = indx;
 return (0);
bad:
 KASSERT(indx == -1, ("indx=%d, should be -1", indx));
 fdrop(fp, td);
 return (error);
}
