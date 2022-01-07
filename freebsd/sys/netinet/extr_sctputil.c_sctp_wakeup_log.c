
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
struct TYPE_9__ {int sb_flags; } ;
struct socket {TYPE_3__ so_snd; } ;
struct TYPE_7__ {int stream_queue_cnt; int chunks_on_out_queue; int sent_queue_cnt; int send_queue_cnt; int total_flight_count; } ;
struct sctp_tcb {struct socket* sctp_socket; TYPE_2__* sctp_ep; TYPE_1__ asoc; } ;
struct TYPE_11__ {int log4; int log3; int log2; int log1; } ;
struct TYPE_10__ {int stream_qcnt; int chunks_on_oque; int sctpflags; int sbflags; int sent_q; int send_q; int flight; int wake_cnt; void* stcb; } ;
struct TYPE_12__ {TYPE_5__ misc; TYPE_4__ wake; } ;
struct sctp_cwnd_log {TYPE_6__ x; } ;
struct TYPE_8__ {int sctp_flags; } ;


 int KTR_SCTP ;
 int SCTP_CTR6 (int ,char*,int ,int,int ,int ,int ,int ) ;
 int SCTP_LOG_EVENT_WAKE ;
 int SCTP_PCB_FLAGS_DONT_WAKE ;
 int SCTP_PCB_FLAGS_WAKEINPUT ;
 int SCTP_PCB_FLAGS_WAKEOUTPUT ;

void
sctp_wakeup_log(struct sctp_tcb *stcb, uint32_t wake_cnt, int from)
{
}
