
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trussinfo {struct threadinfo* curthread; } ;
struct threadinfo {int dummy; } ;
struct ptrace_lwpinfo {int pl_flags; } ;
struct procinfo {int pid; } ;
typedef int pl ;
typedef int lwpid_t ;
typedef int * caddr_t ;


 int PL_FLAG_SCE ;
 int PT_GETLWPLIST ;
 int PT_GETNUMLWPS ;
 int PT_LWPINFO ;
 int assert (int) ;
 int * calloc (int,int) ;
 int enter_syscall (struct trussinfo*,struct threadinfo*,struct ptrace_lwpinfo*) ;
 int err (int,char*) ;
 int free (int *) ;
 struct threadinfo* new_thread (struct procinfo*,int ) ;
 int ptrace (int ,int ,int *,int) ;

__attribute__((used)) static void
add_threads(struct trussinfo *info, struct procinfo *p)
{
 struct ptrace_lwpinfo pl;
 struct threadinfo *t;
 lwpid_t *lwps;
 int i, nlwps;

 nlwps = ptrace(PT_GETNUMLWPS, p->pid, ((void*)0), 0);
 if (nlwps == -1)
  err(1, "Unable to fetch number of LWPs");
 assert(nlwps > 0);
 lwps = calloc(nlwps, sizeof(*lwps));
 nlwps = ptrace(PT_GETLWPLIST, p->pid, (caddr_t)lwps, nlwps);
 if (nlwps == -1)
  err(1, "Unable to fetch LWP list");
 for (i = 0; i < nlwps; i++) {
  t = new_thread(p, lwps[i]);
  if (ptrace(PT_LWPINFO, lwps[i], (caddr_t)&pl, sizeof(pl)) == -1)
   err(1, "ptrace(PT_LWPINFO)");
  if (pl.pl_flags & PL_FLAG_SCE) {
   info->curthread = t;
   enter_syscall(info, t, &pl);
  }
 }
 free(lwps);
}
