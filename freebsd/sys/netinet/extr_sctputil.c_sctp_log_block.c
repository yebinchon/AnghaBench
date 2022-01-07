
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef void* uint16_t ;
struct TYPE_5__ {int log4; int log3; int log2; int log1; } ;
struct TYPE_4__ {scalar_t__ sndlen; void* flight_size; void* chunks_on_oque; void* stream_qcnt; int peer_rwnd; void* send_sent_qcnt; int onsb; } ;
struct TYPE_6__ {TYPE_2__ misc; TYPE_1__ blk; } ;
struct sctp_cwnd_log {TYPE_3__ x; } ;
struct sctp_association {int total_flight; scalar_t__ chunks_on_out_queue; scalar_t__ stream_queue_cnt; int peers_rwnd; scalar_t__ sent_queue_cnt; scalar_t__ send_queue_cnt; int total_output_queue_size; } ;
typedef scalar_t__ ssize_t ;


 int KTR_SCTP ;
 int SCTP_CTR6 (int ,char*,int ,int ,int ,int ,int ,int ) ;
 int SCTP_LOG_EVENT_BLOCK ;

void
sctp_log_block(uint8_t from, struct sctp_association *asoc, ssize_t sendlen)
{
}
