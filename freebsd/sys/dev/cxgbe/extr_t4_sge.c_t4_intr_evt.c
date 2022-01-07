
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_iq {int state; } ;


 int IQS_BUSY ;
 int IQS_IDLE ;
 scalar_t__ atomic_cmpset_int (int *,int ,int ) ;
 int service_iq (struct sge_iq*,int ) ;

void
t4_intr_evt(void *arg)
{
 struct sge_iq *iq = arg;

 if (atomic_cmpset_int(&iq->state, IQS_IDLE, IQS_BUSY)) {
  service_iq(iq, 0);
  (void) atomic_cmpset_int(&iq->state, IQS_BUSY, IQS_IDLE);
 }
}
