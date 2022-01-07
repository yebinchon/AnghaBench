
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockbuf {int sb_cc; } ;
struct TYPE_5__ {scalar_t__ sb_cc; } ;
struct sctp_tcb {TYPE_1__ asoc; } ;
struct TYPE_7__ {int log4; int log3; int log2; int log1; } ;
struct TYPE_6__ {int incr; scalar_t__ stcb_sbcc; int so_sbcc; struct sctp_tcb* stcb; } ;
struct TYPE_8__ {TYPE_3__ misc; TYPE_2__ sb; } ;
struct sctp_cwnd_log {TYPE_4__ x; } ;


 int KTR_SCTP ;
 int SCTP_CTR6 (int ,char*,int ,int,int ,int ,int ,int ) ;
 int SCTP_LOG_EVENT_SB ;

void
sctp_sblog(struct sockbuf *sb, struct sctp_tcb *stcb, int from, int incr)
{
}
