
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_tcb {int dummy; } ;
struct sctp_association {int my_rwnd; } ;


 int sctp_calc_rwnd (struct sctp_tcb*,struct sctp_association*) ;

void
sctp_set_rwnd(struct sctp_tcb *stcb, struct sctp_association *asoc)
{
 asoc->my_rwnd = sctp_calc_rwnd(stcb, asoc);
}
