
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int total_flight_count; int chunks_on_out_queue; int total_output_queue_size; int total_flight; } ;
struct sctp_tcb {TYPE_2__ asoc; } ;
struct TYPE_7__ {int log4; int log3; int log2; int log1; } ;
struct TYPE_5__ {int count_in_flight; int count_in_queue; int total_in_queue; int total_flight; void* stcb; } ;
struct TYPE_8__ {TYPE_3__ misc; TYPE_1__ nagle; } ;
struct sctp_cwnd_log {TYPE_4__ x; } ;


 int KTR_SCTP ;
 int SCTP_CTR6 (int ,char*,int ,int,int ,int ,int ,int ) ;
 int SCTP_LOG_EVENT_NAGLE ;

void
sctp_log_nagle_event(struct sctp_tcb *stcb, int action)
{
}
