
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_iq {int state; } ;
struct adapter {int dummy; } ;


 int IQS_DISABLED ;
 int IQS_IDLE ;
 int atomic_cmpset_int (int *,int ,int ) ;
 int pause (char*,int) ;

__attribute__((used)) static void
quiesce_iq(struct adapter *sc, struct sge_iq *iq)
{
 (void) sc;


 while (!atomic_cmpset_int(&iq->state, IQS_IDLE, IQS_DISABLED))
  pause("iqfree", 1);
}
