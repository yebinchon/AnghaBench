
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmspace {int dummy; } ;


 int shmexit_hook (struct vmspace*) ;

void
shmexit(struct vmspace *vm)
{

 if (shmexit_hook != ((void*)0))
  shmexit_hook(vm);
 return;
}
