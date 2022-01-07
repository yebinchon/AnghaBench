
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* module_t ;
struct TYPE_7__ {scalar_t__ refs; TYPE_1__* file; } ;
struct TYPE_6__ {int modules; } ;


 int MOD_DPF (int ,char*) ;
 int MOD_XLOCK_ASSERT ;
 int M_MODULE ;
 int REFS ;
 int TAILQ_REMOVE (int *,TYPE_2__*,int ) ;
 int flink ;
 int free (TYPE_2__*,int ) ;
 int link ;
 int modules ;
 int panic (char*) ;

void
module_release(module_t mod)
{

 MOD_XLOCK_ASSERT;

 if (mod->refs <= 0)
  panic("module_release: bad reference count");

 MOD_DPF(REFS, ("module_release: before, refs=%d\n", mod->refs));

 mod->refs--;
 if (mod->refs == 0) {
  TAILQ_REMOVE(&modules, mod, link);
  if (mod->file)
   TAILQ_REMOVE(&mod->file->modules, mod, flink);
  free(mod, M_MODULE);
 }
}
