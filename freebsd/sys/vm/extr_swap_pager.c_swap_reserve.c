
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_ooffset_t ;
struct TYPE_2__ {int td_ucred; } ;


 TYPE_1__* curthread ;
 int swap_reserve_by_cred (int ,int ) ;

int
swap_reserve(vm_ooffset_t incr)
{

 return (swap_reserve_by_cred(incr, curthread->td_ucred));
}
