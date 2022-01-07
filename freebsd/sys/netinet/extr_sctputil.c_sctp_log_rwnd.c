
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
struct TYPE_4__ {int log4; int log3; int log2; int log1; } ;
struct TYPE_6__ {scalar_t__ new_rwnd; void* overhead; void* send_size; void* rwnd; } ;
struct TYPE_5__ {TYPE_1__ misc; TYPE_3__ rwnd; } ;
struct sctp_cwnd_log {TYPE_2__ x; } ;


 int KTR_SCTP ;
 int SCTP_CTR6 (int ,char*,int ,int ,int ,int ,int ,int ) ;
 int SCTP_LOG_EVENT_RWND ;

void
sctp_log_rwnd(uint8_t from, uint32_t peers_rwnd, uint32_t snd_size, uint32_t overhead)
{
}
