
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kaiocb {int dummy; } ;


 int ECANCELED ;
 int aio_complete (struct kaiocb*,int,int ) ;

void
aio_cancel(struct kaiocb *job)
{

 aio_complete(job, -1, ECANCELED);
}
