
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* mm; TYPE_2__* signal; } ;
struct TYPE_7__ {unsigned long locked_vm; } ;
struct TYPE_6__ {TYPE_1__* rlim; } ;
struct TYPE_5__ {unsigned long rlim_cur; } ;


 int CAP_IPC_LOCK ;
 unsigned long PAGE_SHIFT ;
 size_t RLIMIT_MEMLOCK ;
 unsigned long ULONG_MAX ;
 scalar_t__ capable (int ) ;
 TYPE_4__* current ;

__attribute__((used)) static unsigned long sdp_get_max_memlockable_bytes(unsigned long offset)
{
 unsigned long avail;
 unsigned long lock_limit;

 if (capable(CAP_IPC_LOCK))
  return ULONG_MAX;

 lock_limit = current->signal->rlim[RLIMIT_MEMLOCK].rlim_cur;
 avail = lock_limit - (current->mm->locked_vm << PAGE_SHIFT);

 return avail - offset;
}
