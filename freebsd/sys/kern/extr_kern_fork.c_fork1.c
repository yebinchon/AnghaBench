
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_ooffset_t ;
typedef scalar_t__ u_int ;
struct vmspace {int dummy; } ;
struct ucred {int cr_ruid; int cr_ruidinfo; } ;
struct timeval {int dummy; } ;
struct thread {scalar_t__ td_kstack; int td_kstack_pages; struct ucred* td_ucred; struct proc* td_proc; } ;
struct proc {int p_pid; int * p_ucred; int p_ktr; int p_mtx; int p_klist; int p_vmspace; } ;
struct fork_req {int fr_flags; int fr_pages; int fr_pd_flags; int * fr_pd_fd; int fr_pd_fcaps; scalar_t__* fr_pidp; int ** fr_procp; } ;
struct file {int dummy; } ;


 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 struct thread* FIRST_THREAD_IN_PROC (struct proc*) ;
 int MPASS (int) ;
 int M_WAITOK ;
 int PD_ALLOWED_AT_FORK ;
 int PRIV_MAXPROC ;
 int PRIV_PROC_LIMIT ;
 int RFCFDG ;
 int RFFDG ;
 int RFFLAGS ;
 int RFMEM ;
 int RFPROC ;
 int RFPROCDESC ;
 int RFSTOPPED ;
 int RFTSIGFLAGS (int ) ;
 int RFTSIGMASK ;
 scalar_t__ RFTSIGNUM (int) ;
 int RFTSIGZMB ;
 int RLIMIT_NPROC ;
 int STAILQ_INIT (int *) ;
 scalar_t__ _SIG_MAXSIG ;
 int allproc_lock ;
 int atomic_add_int (int *,int) ;
 int atomic_fetchadd_int (int *,int) ;
 int chgproccnt (int ,int,int ) ;
 int crfree (int *) ;
 int crhold (struct ucred*) ;
 int do_fork (struct thread*,struct fork_req*,struct proc*,struct thread*,struct vmspace*,struct file*) ;
 int fdclose (struct thread*,struct file*,int ) ;
 int fdrop (struct file*,struct thread*) ;
 int fork_norfproc (struct thread*,int) ;
 int hz ;
 int knlist_alloc (int *) ;
 int kstack_pages ;
 int lim_cur (struct thread*,int ) ;
 int mac_proc_destroy (struct proc*) ;
 int mac_proc_init (struct proc*) ;
 int maxproc ;
 int nprocs ;
 int pause (char*,int) ;
 scalar_t__ ppsratecheck (struct timeval*,int*,int) ;
 int printf (char*,int,int) ;
 scalar_t__ priv_check_cred (struct ucred*,int ) ;
 int proc_linkup (struct proc*,struct thread*) ;
 int proc_set_cred_init (struct proc*,int ) ;
 int proc_zone ;
 int procdesc_falloc (struct thread*,struct file**,int *,int,int ) ;
 int racct_proc_exit (struct proc*) ;
 int racct_proc_fork (struct proc*,struct proc*) ;
 int swap_reserve (scalar_t__) ;
 int swap_reserve_force (scalar_t__) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 struct thread* thread_alloc (int) ;
 int thread_alloc_stack (struct thread*,int) ;
 struct proc* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,struct proc*) ;
 int vm_thread_dispose (struct thread*) ;
 struct vmspace* vmspace_fork (int ,scalar_t__*) ;
 int vmspace_free (struct vmspace*) ;

int
fork1(struct thread *td, struct fork_req *fr)
{
 struct proc *p1, *newproc;
 struct thread *td2;
 struct vmspace *vm2;
 struct ucred *cred;
 struct file *fp_procdesc;
 vm_ooffset_t mem_charged;
 int error, nprocs_new;
 static int curfail;
 static struct timeval lastfail;
 int flags, pages;

 flags = fr->fr_flags;
 pages = fr->fr_pages;

 if ((flags & RFSTOPPED) != 0)
  MPASS(fr->fr_procp != ((void*)0) && fr->fr_pidp == ((void*)0));
 else
  MPASS(fr->fr_procp == ((void*)0));


 if ((flags & ~(RFFLAGS | RFTSIGFLAGS(RFTSIGMASK))) != 0)
  return (EINVAL);


 if ((flags & RFTSIGFLAGS(RFTSIGMASK)) != 0 && (flags & RFTSIGZMB) == 0)
  return (EINVAL);


 if ((flags & (RFFDG|RFCFDG)) == (RFFDG|RFCFDG))
  return (EINVAL);


 if ((flags & RFTSIGZMB) != 0 && (u_int)RFTSIGNUM(flags) > _SIG_MAXSIG)
  return (EINVAL);

 if ((flags & RFPROCDESC) != 0) {

  if ((flags & RFPROC) == 0)
   return (EINVAL);


  if (fr->fr_pd_fd == ((void*)0))
   return (EINVAL);


  if ((fr->fr_pd_flags & ~PD_ALLOWED_AT_FORK) != 0)
   return (EINVAL);
 }

 p1 = td->td_proc;





 if ((flags & RFPROC) == 0) {
  if (fr->fr_procp != ((void*)0))
   *fr->fr_procp = ((void*)0);
  else if (fr->fr_pidp != ((void*)0))
   *fr->fr_pidp = 0;
  return (fork_norfproc(td, flags));
 }

 fp_procdesc = ((void*)0);
 newproc = ((void*)0);
 vm2 = ((void*)0);
 nprocs_new = atomic_fetchadd_int(&nprocs, 1) + 1;
 if (nprocs_new >= maxproc - 10) {
  if (priv_check_cred(td->td_ucred, PRIV_MAXPROC) != 0 ||
      nprocs_new >= maxproc) {
   error = EAGAIN;
   sx_xlock(&allproc_lock);
   if (ppsratecheck(&lastfail, &curfail, 1)) {
    printf("maxproc limit exceeded by uid %u "
        "(pid %d); see tuning(7) and "
        "login.conf(5)\n",
        td->td_ucred->cr_ruid, p1->p_pid);
   }
   sx_xunlock(&allproc_lock);
   goto fail2;
  }
 }






 if (flags & RFPROCDESC) {
  error = procdesc_falloc(td, &fp_procdesc, fr->fr_pd_fd,
      fr->fr_pd_flags, fr->fr_pd_fcaps);
  if (error != 0)
   goto fail2;
 }

 mem_charged = 0;
 if (pages == 0)
  pages = kstack_pages;

 newproc = uma_zalloc(proc_zone, M_WAITOK);
 td2 = FIRST_THREAD_IN_PROC(newproc);
 if (td2 == ((void*)0)) {
  td2 = thread_alloc(pages);
  if (td2 == ((void*)0)) {
   error = ENOMEM;
   goto fail2;
  }
  proc_linkup(newproc, td2);
 } else {
  if (td2->td_kstack == 0 || td2->td_kstack_pages != pages) {
   if (td2->td_kstack != 0)
    vm_thread_dispose(td2);
   if (!thread_alloc_stack(td2, pages)) {
    error = ENOMEM;
    goto fail2;
   }
  }
 }

 if ((flags & RFMEM) == 0) {
  vm2 = vmspace_fork(p1->p_vmspace, &mem_charged);
  if (vm2 == ((void*)0)) {
   error = ENOMEM;
   goto fail2;
  }
  if (!swap_reserve(mem_charged)) {






   swap_reserve_force(mem_charged);
   error = ENOMEM;
   goto fail2;
  }
 } else
  vm2 = ((void*)0);





 proc_set_cred_init(newproc, crhold(td->td_ucred));




 error = racct_proc_fork(p1, newproc);
 if (error != 0) {
  error = EAGAIN;
  goto fail1;
 }




 newproc->p_klist = knlist_alloc(&newproc->p_mtx);
 STAILQ_INIT(&newproc->p_ktr);





 cred = td->td_ucred;
 if (!chgproccnt(cred->cr_ruidinfo, 1, lim_cur(td, RLIMIT_NPROC))) {
  if (priv_check_cred(cred, PRIV_PROC_LIMIT) != 0)
   goto fail0;
  chgproccnt(cred->cr_ruidinfo, 1, 0);
 }

 do_fork(td, fr, newproc, td2, vm2, fp_procdesc);
 return (0);
fail0:
 error = EAGAIN;



 racct_proc_exit(newproc);
fail1:
 crfree(newproc->p_ucred);
 newproc->p_ucred = ((void*)0);
fail2:
 if (vm2 != ((void*)0))
  vmspace_free(vm2);
 uma_zfree(proc_zone, newproc);
 if ((flags & RFPROCDESC) != 0 && fp_procdesc != ((void*)0)) {
  fdclose(td, fp_procdesc, *fr->fr_pd_fd);
  fdrop(fp_procdesc, td);
 }
 atomic_add_int(&nprocs, -1);
 pause("fork", hz / 2);
 return (error);
}
