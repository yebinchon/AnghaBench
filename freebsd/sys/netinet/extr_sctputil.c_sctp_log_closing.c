
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_5__ {scalar_t__ state; } ;
struct sctp_tcb {TYPE_1__ asoc; } ;
struct sctp_inpcb {int sctp_flags; } ;
struct TYPE_7__ {int log4; int log3; int log2; int log1; } ;
struct TYPE_6__ {int loc; scalar_t__ state; void* stcb; int sctp_flags; void* inp; } ;
struct TYPE_8__ {TYPE_3__ misc; TYPE_2__ close; } ;
struct sctp_cwnd_log {TYPE_4__ x; } ;
typedef int int16_t ;


 int KTR_SCTP ;
 int SCTP_CTR6 (int ,char*,int ,int ,int ,int ,int ,int ) ;
 int SCTP_LOG_EVENT_CLOSE ;

void
sctp_log_closing(struct sctp_inpcb *inp, struct sctp_tcb *stcb, int16_t loc)
{
}
