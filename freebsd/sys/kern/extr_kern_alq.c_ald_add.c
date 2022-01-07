
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alq {int dummy; } ;


 int ALD_LOCK () ;
 int ALD_UNLOCK () ;
 int EBUSY ;
 int LIST_INSERT_HEAD (int *,struct alq*,int ) ;
 int ald_queues ;
 scalar_t__ ald_shutingdown ;
 int aq_link ;

__attribute__((used)) static int
ald_add(struct alq *alq)
{
 int error;

 error = 0;

 ALD_LOCK();
 if (ald_shutingdown) {
  error = EBUSY;
  goto done;
 }
 LIST_INSERT_HEAD(&ald_queues, alq, aq_link);
done:
 ALD_UNLOCK();
 return (error);
}
