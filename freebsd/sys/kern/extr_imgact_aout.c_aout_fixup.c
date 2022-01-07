
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct image_params {TYPE_1__* args; } ;
typedef int register_t ;
struct TYPE_2__ {int argc; } ;


 int suword32 (int *,int ) ;

__attribute__((used)) static int
aout_fixup(register_t **stack_base, struct image_params *imgp)
{

 *(char **)stack_base -= sizeof(uint32_t);
 return (suword32(*stack_base, imgp->args->argc));
}
