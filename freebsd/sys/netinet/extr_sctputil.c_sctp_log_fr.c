
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_4__ {int log4; int log3; int log2; int log1; } ;
struct TYPE_5__ {void* tsn; void* largest_new_tsn; void* largest_tsn; } ;
struct TYPE_6__ {TYPE_1__ misc; TYPE_2__ fr; } ;
struct sctp_cwnd_log {TYPE_3__ x; } ;
typedef int sctp_clog ;


 int KTR_SCTP ;
 int SCTP_CTR6 (int ,char*,int ,int,int ,int ,int ,int ) ;
 int SCTP_LOG_EVENT_FR ;
 int memset (struct sctp_cwnd_log*,int ,int) ;

void
sctp_log_fr(uint32_t biggest_tsn, uint32_t biggest_new_tsn, uint32_t tsn, int from)
{
}
