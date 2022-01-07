
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* vm_object_t ;
struct domainset {int ds_mask; } ;
struct TYPE_7__ {struct domainset* dr_policy; } ;
struct TYPE_9__ {TYPE_2__ td_domain; } ;
struct TYPE_6__ {struct domainset* dr_policy; } ;
struct TYPE_8__ {TYPE_1__ domain; } ;


 TYPE_5__* curthread ;
 int vm_wait_doms (int *) ;

void
vm_wait(vm_object_t obj)
{
 struct domainset *d;

 d = ((void*)0);





 if (obj != ((void*)0))
  d = obj->domain.dr_policy;
 if (d == ((void*)0))
  d = curthread->td_domain.dr_policy;

 vm_wait_doms(&d->ds_mask);
}
