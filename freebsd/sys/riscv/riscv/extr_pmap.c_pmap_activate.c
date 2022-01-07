
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int critical_enter () ;
 int critical_exit () ;
 int pmap_activate_sw (struct thread*) ;

void
pmap_activate(struct thread *td)
{

 critical_enter();
 pmap_activate_sw(td);
 critical_exit();
}
