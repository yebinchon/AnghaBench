
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct kvmvars {int kd; } ;
struct gmonparam {int state; } ;
typedef int state ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {scalar_t__ n_value; } ;


 int CTL_KERN ;
 int GMON_PROF_OFF ;
 int GPROF_STATE ;
 int KERN_PROF ;
 size_t N_GMONPARAM ;
 int getuid () ;
 int kflag ;
 scalar_t__ kvm_write (int ,int ,void*,size_t) ;
 TYPE_1__* nl ;
 int seteuid (int ) ;
 scalar_t__ sysctl (int*,int,int*,size_t*,int*,size_t) ;
 int warnx (char*,char*) ;

void
setprof(struct kvmvars *kvp, int state)
{
 struct gmonparam *p = (struct gmonparam *)nl[N_GMONPARAM].n_value;
 size_t sz;
 int mib[3], oldstate;

 sz = sizeof(state);
 if (!kflag) {
  mib[0] = CTL_KERN;
  mib[1] = KERN_PROF;
  mib[2] = GPROF_STATE;
  if (sysctl(mib, 3, &oldstate, &sz, ((void*)0), 0) < 0)
   goto bad;
  if (oldstate == state)
   return;
  (void)seteuid(0);
  if (sysctl(mib, 3, ((void*)0), ((void*)0), &state, sz) >= 0) {
   (void)seteuid(getuid());
   return;
  }
  (void)seteuid(getuid());
 } else if (kvm_write(kvp->kd, (u_long)&p->state, (void *)&state, sz)
     == (ssize_t)sz)
  return;
bad:
 warnx("warning: cannot turn profiling %s",
     state == GMON_PROF_OFF ? "off" : "on");
}
