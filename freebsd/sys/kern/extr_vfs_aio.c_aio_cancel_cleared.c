
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kaiocb {int jobflags; } ;


 int KAIOCB_CLEARED ;

bool
aio_cancel_cleared(struct kaiocb *job)
{







 return ((job->jobflags & KAIOCB_CLEARED) != 0);
}
