
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {size_t* td_retval; } ;
struct file {size_t f_offset; int f_flag; int f_cred; struct vnode* f_vnode; } ;
typedef size_t off_t ;


 int EBADF ;
 int EINTR ;
 int EINVAL ;
 int ERESTART ;
 int FAPPEND ;
 int FREAD ;
 int FWRITE ;
 size_t SSIZE_MAX ;
 int cap_read_rights ;
 int cap_write_rights ;
 int fdrop (struct file*,struct thread*) ;
 int fget_read (struct thread*,int,int *,struct file**) ;
 int fget_write (struct thread*,int,int *,struct file**) ;
 int vn_copy_file_range (struct vnode*,size_t*,struct vnode*,size_t*,size_t*,unsigned int,int ,int ,struct thread*) ;
 void* vn_rangelock_rlock (struct vnode*,size_t,size_t) ;
 void* vn_rangelock_tryrlock (struct vnode*,size_t,size_t) ;
 int vn_rangelock_unlock (struct vnode*,void*) ;
 void* vn_rangelock_wlock (struct vnode*,size_t,size_t) ;

int
kern_copy_file_range(struct thread *td, int infd, off_t *inoffp, int outfd,
    off_t *outoffp, size_t len, unsigned int flags)
{
 struct file *infp, *outfp;
 struct vnode *invp, *outvp;
 int error;
 size_t retlen;
 void *rl_rcookie, *rl_wcookie;
 off_t savinoff, savoutoff;

 infp = outfp = ((void*)0);
 rl_rcookie = rl_wcookie = ((void*)0);
 savinoff = -1;
 error = 0;
 retlen = 0;

 if (flags != 0) {
  error = EINVAL;
  goto out;
 }
 if (len > SSIZE_MAX)





  len = SSIZE_MAX;


 error = fget_read(td, infd, &cap_read_rights, &infp);
 if (error != 0)
  goto out;
 error = fget_write(td, outfd, &cap_write_rights, &outfp);
 if (error != 0)
  goto out;


 if (inoffp == ((void*)0))
  inoffp = &infp->f_offset;
 if (outoffp == ((void*)0))
  outoffp = &outfp->f_offset;
 savinoff = *inoffp;
 savoutoff = *outoffp;

 invp = infp->f_vnode;
 outvp = outfp->f_vnode;

 if ((outfp->f_flag & (FWRITE | FAPPEND)) != FWRITE ||
     (infp->f_flag & FREAD) == 0) {
  error = EBADF;
  goto out;
 }


 if (len == 0)
  goto out;





 if (invp == outvp && ((savinoff <= savoutoff && savinoff + len >
     savoutoff) || (savinoff > savoutoff && savoutoff + len >
     savinoff))) {
  error = EINVAL;
  goto out;
 }


 for (;;) {
  rl_wcookie = vn_rangelock_wlock(outvp, *outoffp, *outoffp +
      len);
  rl_rcookie = vn_rangelock_tryrlock(invp, *inoffp, *inoffp +
      len);
  if (rl_rcookie != ((void*)0))
   break;
  vn_rangelock_unlock(outvp, rl_wcookie);
  rl_rcookie = vn_rangelock_rlock(invp, *inoffp, *inoffp + len);
  vn_rangelock_unlock(invp, rl_rcookie);
 }

 retlen = len;
 error = vn_copy_file_range(invp, inoffp, outvp, outoffp, &retlen,
     flags, infp->f_cred, outfp->f_cred, td);
out:
 if (rl_rcookie != ((void*)0))
  vn_rangelock_unlock(invp, rl_rcookie);
 if (rl_wcookie != ((void*)0))
  vn_rangelock_unlock(outvp, rl_wcookie);
 if (savinoff != -1 && (error == EINTR || error == ERESTART)) {
  *inoffp = savinoff;
  *outoffp = savoutoff;
 }
 if (outfp != ((void*)0))
  fdrop(outfp, td);
 if (infp != ((void*)0))
  fdrop(infp, td);
 td->td_retval[0] = retlen;
 return (error);
}
