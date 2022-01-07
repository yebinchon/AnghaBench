
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_tcb {int dummy; } ;
struct sctp_association {int dummy; } ;


 int sctp_cwnd_update_after_sack_common (struct sctp_tcb*,struct sctp_association*,int,int,int,int) ;

__attribute__((used)) static void
sctp_cwnd_update_rtcc_after_sack(struct sctp_tcb *stcb,
    struct sctp_association *asoc,
    int accum_moved, int reneged_all, int will_exit)
{

 sctp_cwnd_update_after_sack_common(stcb, asoc, accum_moved, reneged_all, will_exit, 1);
}
