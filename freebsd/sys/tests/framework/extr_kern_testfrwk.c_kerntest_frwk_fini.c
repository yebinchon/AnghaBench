
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kfrwk_tq; int kfrwk_testlist; } ;


 int EBUSY ;
 int KTFRWK_DESTROY () ;
 int KTFRWK_LOCK () ;
 int KTFRWK_UNLOCK () ;
 int TAILQ_EMPTY (int *) ;
 TYPE_1__ kfrwk ;
 scalar_t__ ktest_frwk_inited ;
 int taskqueue_free (int ) ;

__attribute__((used)) static int
kerntest_frwk_fini(void)
{
 KTFRWK_LOCK();
 if (!TAILQ_EMPTY(&kfrwk.kfrwk_testlist)) {

  KTFRWK_UNLOCK();
  return (EBUSY);
 }
 ktest_frwk_inited = 0;
 KTFRWK_UNLOCK();
 taskqueue_free(kfrwk.kfrwk_tq);

 KTFRWK_DESTROY();
 return (0);
}
