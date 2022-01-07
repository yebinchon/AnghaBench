
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmvars {int kd; } ;
struct clockinfo {int profhz; } ;
struct TYPE_2__ {int n_value; } ;


 int CTL_KERN ;
 int KERN_CLOCKRATE ;
 size_t N_PROFHZ ;
 scalar_t__ kflag ;
 int kvm_geterr (int ) ;
 int kvm_read (int ,int ,int*,int) ;
 TYPE_1__* nl ;
 scalar_t__ sysctl (int*,int,struct clockinfo*,size_t*,int *,int ) ;
 int warn (char*) ;
 int warnx (char*,int ) ;

int
getprofhz(struct kvmvars *kvp)
{
 size_t size;
 int mib[2], profrate;
 struct clockinfo clockrate;

 if (kflag) {
  profrate = 1;
  if (kvm_read(kvp->kd, nl[N_PROFHZ].n_value, &profrate,
      sizeof profrate) != sizeof profrate)
   warnx("get clockrate: %s", kvm_geterr(kvp->kd));
  return (profrate);
 }
 mib[0] = CTL_KERN;
 mib[1] = KERN_CLOCKRATE;
 clockrate.profhz = 1;
 size = sizeof clockrate;
 if (sysctl(mib, 2, &clockrate, &size, ((void*)0), 0) < 0)
  warn("get clockrate");
 return (clockrate.profhz);
}
