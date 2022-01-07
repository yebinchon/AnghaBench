
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct image_params {TYPE_1__* args; } ;
typedef int register_t ;
struct TYPE_2__ {scalar_t__ argc; } ;


 int EFAULT ;
 int suword (int *,int ) ;

__attribute__((used)) static int
linux_fixup_elf(register_t **stack_base, struct image_params *imgp)
{

 (*stack_base)--;
 if (suword(*stack_base, (register_t)imgp->args->argc) == -1)
  return (EFAULT);
 return (0);
}
