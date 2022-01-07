
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct image_params {TYPE_1__* args; } ;
typedef int register_t ;
struct TYPE_2__ {int argc; } ;


 int suword (int *,intptr_t) ;

__attribute__((used)) static int
linux_fixup(register_t **stack_base, struct image_params *imgp)
{
 register_t *argv, *envp;

 argv = *stack_base;
 envp = *stack_base + (imgp->args->argc + 1);
 (*stack_base)--;
 suword(*stack_base, (intptr_t)(void *)envp);
 (*stack_base)--;
 suword(*stack_base, (intptr_t)(void *)argv);
 (*stack_base)--;
 suword(*stack_base, imgp->args->argc);
 return (0);
}
