
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kvmvars {int * kd; } ;
struct TYPE_3__ {int n_value; } ;


 scalar_t__ Bflag ;
 int CTL_KERN ;
 int GMON_PROF_HIRES ;
 int GMON_PROF_ON ;
 int GPROF_STATE ;
 int KERN_PROF ;
 size_t N_GMONPARAM ;
 int O_RDONLY ;
 int O_RDWR ;
 int _POSIX2_LINE_MAX ;
 scalar_t__ bflag ;
 int errx (int,char*,...) ;
 int getuid () ;
 scalar_t__ hflag ;
 int kern_readonly (int) ;
 int kflag ;
 scalar_t__ kvm_nlist (int *,TYPE_1__*) ;
 void* kvm_openfiles (char const*,char*,int *,int,char*) ;
 TYPE_1__* nl ;
 scalar_t__ pflag ;
 scalar_t__ rflag ;
 int seteuid (int ) ;
 scalar_t__ sysctl (int*,int,int*,size_t*,int*,size_t) ;

int
openfiles(const char *systemname, char *kmemf, struct kvmvars *kvp)
{
 size_t size;
 int mib[3], state, openmode;
 char errbuf[_POSIX2_LINE_MAX];

 if (!kflag) {
  mib[0] = CTL_KERN;
  mib[1] = KERN_PROF;
  mib[2] = GPROF_STATE;
  size = sizeof state;
  if (sysctl(mib, 3, &state, &size, ((void*)0), 0) < 0)
   errx(20, "profiling not defined in kernel");
  if (!(Bflag || bflag || hflag || rflag ||
      (pflag &&
       (state == GMON_PROF_HIRES || state == GMON_PROF_ON))))
   return (O_RDONLY);
  (void)seteuid(0);
  if (sysctl(mib, 3, ((void*)0), ((void*)0), &state, size) >= 0)
   return (O_RDWR);
  (void)seteuid(getuid());
  kern_readonly(state);
  return (O_RDONLY);
 }
 openmode = (Bflag || bflag || hflag || pflag || rflag)
     ? O_RDWR : O_RDONLY;
 kvp->kd = kvm_openfiles(systemname, kmemf, ((void*)0), openmode, errbuf);
 if (kvp->kd == ((void*)0)) {
  if (openmode == O_RDWR) {
   openmode = O_RDONLY;
   kvp->kd = kvm_openfiles(systemname, kmemf, ((void*)0), O_RDONLY,
       errbuf);
  }
  if (kvp->kd == ((void*)0))
   errx(2, "kvm_openfiles: %s", errbuf);
  kern_readonly(GMON_PROF_ON);
 }
 if (kvm_nlist(kvp->kd, nl) < 0)
  errx(3, "%s: no namelist", systemname);
 if (!nl[N_GMONPARAM].n_value)
  errx(20, "profiling not defined in kernel");
 return (openmode);
}
