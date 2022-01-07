
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmcstat_target {int pt_pid; } ;
struct kinfo_proc {int ki_pid; int ki_comm; } ;
typedef int regmatch_t ;
typedef int regex_t ;
typedef int errbuf ;
struct TYPE_2__ {int pa_targets; } ;


 int EX_DATAERR ;
 int EX_OSERR ;
 int EX_SOFTWARE ;
 int KERN_PROC_PROC ;
 int REG_EXTENDED ;
 int REG_NOMATCH ;
 int REG_NOSUB ;
 int SLIST_INSERT_HEAD (int *,struct pmcstat_target*,int ) ;
 int _POSIX2_LINE_MAX ;
 TYPE_1__ args ;
 int err (int ,char*,char const*,...) ;
 int errx (int ,char*,...) ;
 int kvm_geterr (int *) ;
 struct kinfo_proc* kvm_getprocs (int *,int ,int ,int*) ;
 int * kvm_openfiles (int *,char*,int *,int ,char*) ;
 struct pmcstat_target* malloc (int) ;
 int * pmcstat_kvm ;
 struct kinfo_proc* pmcstat_plist ;
 int pt_next ;
 int regcomp (int *,char const*,int) ;
 int regerror (int,int *,char*,int) ;
 int regexec (int *,int ,int,int *,int ) ;
 int regfree (int *) ;
 int strtol (char const*,char**,int ) ;

void
pmcstat_find_targets(const char *spec)
{
 int n, nproc, pid, rv;
 struct pmcstat_target *pt;
 char errbuf[_POSIX2_LINE_MAX], *end;
 static struct kinfo_proc *kp;
 regex_t reg;
 regmatch_t regmatch;


       pid = strtol(spec, &end, 0);
 if (end != spec && pid >= 0) {
  if ((pt = malloc(sizeof(*pt))) == ((void*)0))
   goto outofmemory;
  pt->pt_pid = pid;
  SLIST_INSERT_HEAD(&args.pa_targets, pt, pt_next);
  return;
 }


 if (pmcstat_kvm == ((void*)0)) {
  if ((pmcstat_kvm = kvm_openfiles(((void*)0), "/dev/null", ((void*)0), 0,
      errbuf)) == ((void*)0))
   err(EX_OSERR, "ERROR: Cannot open kernel \"%s\"",
       errbuf);
  if ((pmcstat_plist = kvm_getprocs(pmcstat_kvm, KERN_PROC_PROC,
      0, &nproc)) == ((void*)0))
   err(EX_OSERR, "ERROR: Cannot get process list: %s",
       kvm_geterr(pmcstat_kvm));
 } else
  nproc = 0;

 if ((rv = regcomp(&reg, spec, REG_EXTENDED|REG_NOSUB)) != 0) {
  regerror(rv, &reg, errbuf, sizeof(errbuf));
  err(EX_DATAERR, "ERROR: Failed to compile regex \"%s\": %s",
      spec, errbuf);
 }

 for (n = 0, kp = pmcstat_plist; n < nproc; n++, kp++) {
  if ((rv = regexec(&reg, kp->ki_comm, 1, &regmatch, 0)) == 0) {
   if ((pt = malloc(sizeof(*pt))) == ((void*)0))
    goto outofmemory;
   pt->pt_pid = kp->ki_pid;
   SLIST_INSERT_HEAD(&args.pa_targets, pt, pt_next);
  } else if (rv != REG_NOMATCH) {
   regerror(rv, &reg, errbuf, sizeof(errbuf));
   errx(EX_SOFTWARE, "ERROR: Regex evalation failed: %s",
       errbuf);
  }
 }

 regfree(&reg);

 return;

 outofmemory:
 errx(EX_SOFTWARE, "Out of memory.");

}
