
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct kinfo_proc {scalar_t__ ki_runtime; } const kinfo_proc ;
struct TYPE_2__ {scalar_t__ ru_nvcsw; scalar_t__ ru_nivcsw; } ;


 scalar_t__ PCTCPU (struct kinfo_proc const*) ;
 TYPE_1__* RU (struct kinfo_proc const*) ;
 struct kinfo_proc const* get_old_proc (struct kinfo_proc const*) ;

__attribute__((used)) static int
proc_used_cpu(struct kinfo_proc *pp)
{
 const struct kinfo_proc *oldp;

 oldp = get_old_proc(pp);
 if (oldp == ((void*)0))
  return (PCTCPU(pp) != 0);
 return (pp->ki_runtime != oldp->ki_runtime ||
     RU(pp)->ru_nvcsw != RU(oldp)->ru_nvcsw ||
     RU(pp)->ru_nivcsw != RU(oldp)->ru_nivcsw);
}
