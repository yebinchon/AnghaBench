
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* module_t ;
typedef int modspecific_t ;
struct TYPE_3__ {int data; } ;


 int MOD_XLOCK_ASSERT ;

void
module_setspecific(module_t mod, modspecific_t *datap)
{

 MOD_XLOCK_ASSERT;
 mod->data = *datap;
}
