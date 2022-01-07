
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int module_t ;
struct TYPE_2__ {int kfrwk_testlist; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int KTFRWK_LOCK () ;
 int KTFRWK_UNLOCK () ;



 int TAILQ_EMPTY (int *) ;
 int kerntest_frwk_fini () ;
 int kerntest_frwk_init () ;
 TYPE_1__ kfrwk ;

__attribute__((used)) static int
kerntest_mod_init(module_t mod, int type, void *data)
{
 int err;

 switch (type) {
 case 130:
  err = kerntest_frwk_init();
  break;
 case 129:
  KTFRWK_LOCK();
  if (TAILQ_EMPTY(&kfrwk.kfrwk_testlist)) {
   err = 0;
  } else {
   err = EBUSY;
  }
  KTFRWK_UNLOCK();
  break;
 case 128:
  err = kerntest_frwk_fini();
  break;
 default:
  return (EOPNOTSUPP);
 }
 return (err);
}
