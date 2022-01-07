
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32_t ;
typedef void* uint16_t ;
struct TYPE_4__ {int log4; int log3; int log2; int log1; } ;
struct TYPE_6__ {void* numDups; void* numGaps; void* tsn; void* oldcumack; void* cumack; } ;
struct TYPE_5__ {TYPE_1__ misc; TYPE_3__ sack; } ;
struct sctp_cwnd_log {TYPE_2__ x; } ;


 int KTR_SCTP ;
 int SCTP_CTR6 (int ,char*,int ,int,int ,int ,int ,int ) ;
 int SCTP_LOG_EVENT_SACK ;

void
sctp_log_sack(uint32_t old_cumack, uint32_t cumack, uint32_t tsn, uint16_t gaps, uint16_t dups, int from)
{
}
