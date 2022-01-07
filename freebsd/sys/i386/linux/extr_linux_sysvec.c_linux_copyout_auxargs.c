
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct ps_strings {int dummy; } ;
struct proc {int p_flag; TYPE_2__* p_ucred; TYPE_1__* p_sysent; } ;
struct image_params {int canary; int execpathp; int * auxargs; struct proc* proc; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_6__ {int phdr; int phent; int phnum; int pagesz; int flags; int entry; int base; int execfd; } ;
struct TYPE_5__ {int cr_ruid; int cr_svuid; int cr_rgid; int cr_svgid; } ;
struct TYPE_4__ {int sv_shared_page_base; scalar_t__ sv_psstrings; } ;
typedef int Elf32_Auxinfo ;
typedef TYPE_3__ Elf32_Auxargs ;
typedef int Elf32_Addr ;


 int AT_BASE ;
 int AT_EGID ;
 int AT_ENTRY ;
 int AT_EUID ;
 int AT_EXECFD ;
 int AT_FLAGS ;
 int AT_GID ;
 int AT_NULL ;
 int AT_PAGESZ ;
 int AT_PHDR ;
 int AT_PHENT ;
 int AT_PHNUM ;
 int AT_UID ;
 int AUXARGS_ENTRY (int *,int ,int) ;
 int KASSERT (int,char*) ;
 int LINUX_AT_CLKTCK ;
 int LINUX_AT_COUNT ;
 int LINUX_AT_EXECFN ;
 int LINUX_AT_HWCAP ;
 int LINUX_AT_PLATFORM ;
 int LINUX_AT_RANDOM ;
 int LINUX_AT_SECURE ;
 int LINUX_AT_SYSINFO ;
 int LINUX_AT_SYSINFO_EHDR ;
 scalar_t__ LINUX_KERNVER_2004000 ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int PTROUT (int *) ;
 int P_SUGID ;
 int copyout (int *,void*,int) ;
 int cpu_feature ;
 int curthread ;
 int free (int *,int ) ;
 scalar_t__ linux_kernver (int ) ;
 scalar_t__ linux_szplatform ;
 int linux_vsyscall ;
 int * malloc (int,int ,int) ;
 int stclohz ;

__attribute__((used)) static void
linux_copyout_auxargs(struct image_params *imgp, u_long *base)
{
 struct proc *p;
 Elf32_Auxargs *args;
 Elf32_Auxinfo *argarray, *pos;
 Elf32_Addr *uplatform;
 struct ps_strings *arginfo;
 u_long auxlen;
 int issetugid;

 p = imgp->proc;
 issetugid = imgp->proc->p_flag & P_SUGID ? 1 : 0;
 arginfo = (struct ps_strings *)p->p_sysent->sv_psstrings;
 uplatform = (Elf32_Addr *)((caddr_t)arginfo - linux_szplatform);
 args = (Elf32_Auxargs *)imgp->auxargs;
 argarray = pos = malloc(LINUX_AT_COUNT * sizeof(*pos), M_TEMP,
     M_WAITOK | M_ZERO);

 AUXARGS_ENTRY(pos, LINUX_AT_SYSINFO_EHDR,
     imgp->proc->p_sysent->sv_shared_page_base);
 AUXARGS_ENTRY(pos, LINUX_AT_SYSINFO, linux_vsyscall);
 AUXARGS_ENTRY(pos, LINUX_AT_HWCAP, cpu_feature);
 if (linux_kernver(curthread) >= LINUX_KERNVER_2004000)
  AUXARGS_ENTRY(pos, LINUX_AT_CLKTCK, stclohz);
 AUXARGS_ENTRY(pos, AT_PHDR, args->phdr);
 AUXARGS_ENTRY(pos, AT_PHENT, args->phent);
 AUXARGS_ENTRY(pos, AT_PHNUM, args->phnum);
 AUXARGS_ENTRY(pos, AT_PAGESZ, args->pagesz);
 AUXARGS_ENTRY(pos, AT_FLAGS, args->flags);
 AUXARGS_ENTRY(pos, AT_ENTRY, args->entry);
 AUXARGS_ENTRY(pos, AT_BASE, args->base);
 AUXARGS_ENTRY(pos, LINUX_AT_SECURE, issetugid);
 AUXARGS_ENTRY(pos, AT_UID, imgp->proc->p_ucred->cr_ruid);
 AUXARGS_ENTRY(pos, AT_EUID, imgp->proc->p_ucred->cr_svuid);
 AUXARGS_ENTRY(pos, AT_GID, imgp->proc->p_ucred->cr_rgid);
 AUXARGS_ENTRY(pos, AT_EGID, imgp->proc->p_ucred->cr_svgid);
 AUXARGS_ENTRY(pos, LINUX_AT_PLATFORM, PTROUT(uplatform));
 AUXARGS_ENTRY(pos, LINUX_AT_RANDOM, imgp->canary);
 if (imgp->execpathp != 0)
  AUXARGS_ENTRY(pos, LINUX_AT_EXECFN, imgp->execpathp);
 if (args->execfd != -1)
  AUXARGS_ENTRY(pos, AT_EXECFD, args->execfd);
 AUXARGS_ENTRY(pos, AT_NULL, 0);

 free(imgp->auxargs, M_TEMP);
 imgp->auxargs = ((void*)0);
 KASSERT(pos - argarray <= LINUX_AT_COUNT, ("Too many auxargs"));

 auxlen = sizeof(*argarray) * (pos - argarray);
 *base -= auxlen;
 copyout(argarray, (void *)*base, auxlen);
 free(argarray, M_TEMP);
}
