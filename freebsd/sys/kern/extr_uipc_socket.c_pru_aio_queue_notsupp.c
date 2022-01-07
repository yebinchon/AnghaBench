
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct kaiocb {int dummy; } ;


 int EOPNOTSUPP ;

int
pru_aio_queue_notsupp(struct socket *so, struct kaiocb *job)
{

 return EOPNOTSUPP;
}
