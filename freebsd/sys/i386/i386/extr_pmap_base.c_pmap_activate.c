
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_2__ {int (* pm_activate ) (struct thread*) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (struct thread*) ;

void
pmap_activate(struct thread *td)
{

 pmap_methods_ptr->pm_activate(td);
}
