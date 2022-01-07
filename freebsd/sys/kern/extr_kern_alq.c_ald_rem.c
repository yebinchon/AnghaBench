
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alq {int dummy; } ;


 int ALD_LOCK () ;
 int ALD_UNLOCK () ;
 int EBUSY ;
 int LIST_REMOVE (struct alq*,int ) ;
 scalar_t__ ald_shutingdown ;
 int aq_link ;

__attribute__((used)) static int
ald_rem(struct alq *alq)
{
 int error;

 error = 0;

 ALD_LOCK();
 if (ald_shutingdown) {
  error = EBUSY;
  goto done;
 }
 LIST_REMOVE(alq, aq_link);
done:
 ALD_UNLOCK();
 return (error);
}
