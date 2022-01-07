
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef int vm_prot_t ;
typedef scalar_t__ vm_offset_t ;
typedef size_t u_int ;
struct thread {int dummy; } ;
struct rlimit {scalar_t__ rlim_cur; scalar_t__ rlim_max; } ;
struct proc {scalar_t__ p_cpulimit; int p_flag; TYPE_2__* p_vmspace; TYPE_1__* p_sysent; struct plimit* p_limit; int p_limco; } ;
struct plimit {struct rlimit* pl_rlimit; } ;
struct TYPE_4__ {int vm_map; } ;
struct TYPE_3__ {scalar_t__ sv_usrstack; int sv_stackprot; int (* sv_fixlimit ) (struct rlimit*,size_t) ;} ;


 int C_PREL (int) ;
 int EINVAL ;
 int FALSE ;
 int PRIV_PROC_SETRLIMIT ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int PROC_UPDATE_COW (struct proc*) ;
 int P_INEXEC ;





 scalar_t__ RLIM_INFINITY ;
 size_t RLIM_NLIMITS ;
 int SBT_1S ;
 int VM_PROT_NONE ;
 int callout_reset_sbt (int *,int ,int ,int ,struct proc*,int ) ;
 struct thread* curthread ;
 struct plimit* lim_alloc () ;
 int lim_cb ;
 int lim_copy (struct plimit*,struct plimit*) ;
 int lim_free (struct plimit*) ;
 void* maxdsiz ;
 void* maxfilesperproc ;
 void* maxprocperuid ;
 void* maxssiz ;
 int priv_check (struct thread*,int ) ;
 scalar_t__ round_page (scalar_t__) ;
 int stub1 (struct rlimit*,int const) ;
 int stub2 (struct rlimit*,size_t) ;
 scalar_t__ trunc_page (scalar_t__) ;
 int vm_map_protect (int *,scalar_t__,scalar_t__,int ,int ) ;

int
kern_proc_setrlimit(struct thread *td, struct proc *p, u_int which,
    struct rlimit *limp)
{
 struct plimit *newlim, *oldlim;
 struct rlimit *alimp;
 struct rlimit oldssiz;
 int error;

 if (which >= RLIM_NLIMITS)
  return (EINVAL);




 if (limp->rlim_cur < 0)
  limp->rlim_cur = RLIM_INFINITY;
 if (limp->rlim_max < 0)
  limp->rlim_max = RLIM_INFINITY;

 oldssiz.rlim_cur = 0;
 newlim = lim_alloc();
 PROC_LOCK(p);
 oldlim = p->p_limit;
 alimp = &oldlim->pl_rlimit[which];
 if (limp->rlim_cur > alimp->rlim_max ||
     limp->rlim_max > alimp->rlim_max)
  if ((error = priv_check(td, PRIV_PROC_SETRLIMIT))) {
   PROC_UNLOCK(p);
   lim_free(newlim);
   return (error);
  }
 if (limp->rlim_cur > limp->rlim_max)
  limp->rlim_cur = limp->rlim_max;
 lim_copy(newlim, oldlim);
 alimp = &newlim->pl_rlimit[which];

 switch (which) {

 case 132:
  if (limp->rlim_cur != RLIM_INFINITY &&
      p->p_cpulimit == RLIM_INFINITY)
   callout_reset_sbt(&p->p_limco, SBT_1S, 0,
       lim_cb, p, C_PREL(1));
  p->p_cpulimit = limp->rlim_cur;
  break;
 case 131:
  if (limp->rlim_cur > maxdsiz)
   limp->rlim_cur = maxdsiz;
  if (limp->rlim_max > maxdsiz)
   limp->rlim_max = maxdsiz;
  break;

 case 128:
  if (limp->rlim_cur > maxssiz)
   limp->rlim_cur = maxssiz;
  if (limp->rlim_max > maxssiz)
   limp->rlim_max = maxssiz;
  oldssiz = *alimp;
  if (p->p_sysent->sv_fixlimit != ((void*)0))
   p->p_sysent->sv_fixlimit(&oldssiz,
       128);
  break;

 case 130:
  if (limp->rlim_cur > maxfilesperproc)
   limp->rlim_cur = maxfilesperproc;
  if (limp->rlim_max > maxfilesperproc)
   limp->rlim_max = maxfilesperproc;
  break;

 case 129:
  if (limp->rlim_cur > maxprocperuid)
   limp->rlim_cur = maxprocperuid;
  if (limp->rlim_max > maxprocperuid)
   limp->rlim_max = maxprocperuid;
  if (limp->rlim_cur < 1)
   limp->rlim_cur = 1;
  if (limp->rlim_max < 1)
   limp->rlim_max = 1;
  break;
 }
 if (p->p_sysent->sv_fixlimit != ((void*)0))
  p->p_sysent->sv_fixlimit(limp, which);
 *alimp = *limp;
 p->p_limit = newlim;
 PROC_UPDATE_COW(p);
 PROC_UNLOCK(p);
 lim_free(oldlim);

 if (which == 128 &&




     (td != curthread || (p->p_flag & P_INEXEC) == 0)) {





  if (limp->rlim_cur != oldssiz.rlim_cur) {
   vm_offset_t addr;
   vm_size_t size;
   vm_prot_t prot;

   if (limp->rlim_cur > oldssiz.rlim_cur) {
    prot = p->p_sysent->sv_stackprot;
    size = limp->rlim_cur - oldssiz.rlim_cur;
    addr = p->p_sysent->sv_usrstack -
        limp->rlim_cur;
   } else {
    prot = VM_PROT_NONE;
    size = oldssiz.rlim_cur - limp->rlim_cur;
    addr = p->p_sysent->sv_usrstack -
        oldssiz.rlim_cur;
   }
   addr = trunc_page(addr);
   size = round_page(size);
   (void)vm_map_protect(&p->p_vmspace->vm_map,
       addr, addr + size, prot, FALSE);
  }
 }

 return (0);
}
