
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* module_t ;
struct TYPE_3__ {int refs; } ;


 int MOD_DPF (int ,char*) ;
 int MOD_XLOCK_ASSERT ;
 int REFS ;

void
module_reference(module_t mod)
{

 MOD_XLOCK_ASSERT;

 MOD_DPF(REFS, ("module_reference: before, refs=%d\n", mod->refs));
 mod->refs++;
}
