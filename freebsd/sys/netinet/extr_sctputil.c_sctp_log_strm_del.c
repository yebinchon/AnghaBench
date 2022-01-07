
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint16_t ;
struct sctp_queued_to_read {scalar_t__ mid; scalar_t__ sinfo_tsn; int sinfo_stream; int stcb; } ;
struct TYPE_5__ {int log4; int log3; int log2; int log1; } ;
struct TYPE_4__ {void* e_sseq; scalar_t__ e_tsn; int strm; void* n_sseq; scalar_t__ n_tsn; int stcb; } ;
struct TYPE_6__ {TYPE_2__ misc; TYPE_1__ strlog; } ;
struct sctp_cwnd_log {TYPE_3__ x; } ;


 int KTR_SCTP ;
 int SCTP_CTR6 (int ,char*,int ,int,int ,int ,int ,int ) ;
 int SCTP_LOG_EVENT_STRM ;
 int SCTP_PRINTF (char*) ;

void
sctp_log_strm_del(struct sctp_queued_to_read *control, struct sctp_queued_to_read *poschk, int from)
{
}
