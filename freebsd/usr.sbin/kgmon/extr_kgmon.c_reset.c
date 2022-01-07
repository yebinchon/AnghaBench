
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct TYPE_2__ {scalar_t__ kcountsize; scalar_t__ fromssize; scalar_t__ tossize; scalar_t__ tos; scalar_t__ froms; scalar_t__ kcount; } ;
struct kvmvars {TYPE_1__ gpm; int kd; } ;
typedef scalar_t__ ssize_t ;


 int CTL_KERN ;
 int GMON_PROF_OFF ;
 int GPROF_COUNT ;
 int GPROF_FROMS ;
 int GPROF_TOS ;
 int KERN_PROF ;
 int bzero (char*,scalar_t__) ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 int free (char*) ;
 int getuid () ;
 scalar_t__ kflag ;
 int kvm_geterr (int ) ;
 scalar_t__ kvm_write (int ,scalar_t__,char*,scalar_t__) ;
 scalar_t__ malloc (scalar_t__) ;
 int seteuid (int ) ;
 int setprof (struct kvmvars*,int ) ;
 scalar_t__ sysctl (int*,int,int *,int *,char*,scalar_t__) ;

void
reset(struct kvmvars *kvp)
{
 char *zbuf;
 u_long biggest;
 int mib[3];

 setprof(kvp, GMON_PROF_OFF);

 biggest = kvp->gpm.kcountsize;
 if (kvp->gpm.fromssize > biggest)
  biggest = kvp->gpm.fromssize;
 if (kvp->gpm.tossize > biggest)
  biggest = kvp->gpm.tossize;
 if ((zbuf = (char *)malloc(biggest)) == ((void*)0))
  errx(12, "cannot allocate zbuf space");
 bzero(zbuf, biggest);
 if (kflag) {
  if (kvm_write(kvp->kd, (u_long)kvp->gpm.kcount, zbuf,
      kvp->gpm.kcountsize) != (ssize_t)kvp->gpm.kcountsize)
   errx(13, "tickbuf zero: %s", kvm_geterr(kvp->kd));
  if (kvm_write(kvp->kd, (u_long)kvp->gpm.froms, zbuf,
      kvp->gpm.fromssize) != (ssize_t)kvp->gpm.fromssize)
   errx(14, "froms zero: %s", kvm_geterr(kvp->kd));
  if (kvm_write(kvp->kd, (u_long)kvp->gpm.tos, zbuf,
      kvp->gpm.tossize) != (ssize_t)kvp->gpm.tossize)
   errx(15, "tos zero: %s", kvm_geterr(kvp->kd));
  free(zbuf);
  return;
 }
 (void)seteuid(0);
 mib[0] = CTL_KERN;
 mib[1] = KERN_PROF;
 mib[2] = GPROF_COUNT;
 if (sysctl(mib, 3, ((void*)0), ((void*)0), zbuf, kvp->gpm.kcountsize) < 0)
  err(13, "tickbuf zero");
 mib[2] = GPROF_FROMS;
 if (sysctl(mib, 3, ((void*)0), ((void*)0), zbuf, kvp->gpm.fromssize) < 0)
  err(14, "froms zero");
 mib[2] = GPROF_TOS;
 if (sysctl(mib, 3, ((void*)0), ((void*)0), zbuf, kvp->gpm.tossize) < 0)
  err(15, "tos zero");
 (void)seteuid(getuid());
 free(zbuf);
}
