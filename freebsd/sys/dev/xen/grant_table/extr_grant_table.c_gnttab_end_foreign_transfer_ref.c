
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef size_t grant_ref_t ;
struct TYPE_2__ {int flags; unsigned long frame; } ;


 int GTF_transfer_committed ;
 int GTF_transfer_completed ;
 int KASSERT (int,char*) ;
 int cpu_spinwait () ;
 int rmb () ;
 TYPE_1__* shared ;
 int synch_cmpxchg (int*,int,int ) ;

unsigned long
gnttab_end_foreign_transfer_ref(grant_ref_t ref)
{
 unsigned long frame;
 uint16_t flags;





 while (!((flags = shared[ref].flags) & GTF_transfer_committed)) {
  if ( synch_cmpxchg(&shared[ref].flags, flags, 0) == flags )
   return (0);
  cpu_spinwait();
 }


 while (!(flags & GTF_transfer_completed)) {
  flags = shared[ref].flags;
  cpu_spinwait();
 }


 rmb();
 frame = shared[ref].frame;
 KASSERT(frame != 0, ("grant table inconsistent"));

 return (frame);
}
