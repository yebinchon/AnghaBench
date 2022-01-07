
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pccard_function {int intr_handler_arg; int (* intr_handler ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void
pccard_intr(void *arg)
{
 struct pccard_function *pf = (struct pccard_function*) arg;

 pf->intr_handler(pf->intr_handler_arg);
}
