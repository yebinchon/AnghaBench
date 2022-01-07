
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_tmit_chunk {scalar_t__ send_size; } ;
struct TYPE_3__ {int bw_bytes; } ;
struct TYPE_4__ {TYPE_1__ rtcc; } ;
struct sctp_nets {TYPE_2__ cc_mod; } ;



__attribute__((used)) static
void
sctp_cwnd_update_rtcc_tsn_acknowledged(struct sctp_nets *net,
    struct sctp_tmit_chunk *tp1)
{
 net->cc_mod.rtcc.bw_bytes += tp1->send_size;
}
