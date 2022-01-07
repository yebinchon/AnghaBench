
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int u_int ;
struct casueword_arg0 {int newval; int oldval; scalar_t__ res; } ;


 scalar_t__ atomic_fcmpset_int (int *,int *,int ) ;

__attribute__((used)) static void
casueword_slow0(vm_offset_t kva, void *arg)
{
 struct casueword_arg0 *ca;

 ca = arg;
 ca->res = 1 - atomic_fcmpset_int((u_int *)kva, &ca->oldval,
     ca->newval);
}
