
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sctp_nets {int rtt; } ;
struct TYPE_4__ {int log4; int log3; int log2; int log1; } ;
struct TYPE_6__ {int rtt; void* net; } ;
struct TYPE_5__ {TYPE_1__ misc; TYPE_3__ rto; } ;
struct sctp_cwnd_log {TYPE_2__ x; } ;
typedef int sctp_clog ;


 int KTR_SCTP ;
 int SCTP_CTR6 (int ,char*,int ,int,int ,int ,int ,int ) ;
 int SCTP_LOG_EVENT_RTT ;
 int memset (struct sctp_cwnd_log*,int ,int) ;

void
rto_logging(struct sctp_nets *net, int from)
{
}
