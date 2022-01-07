
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfsync_state_peer {scalar_t__ state; int seqlo; } ;
struct TYPE_2__ {scalar_t__ state; int seqlo; } ;
struct pf_state {TYPE_1__ dst; TYPE_1__ src; } ;


 int PF_STATE_LOCK_ASSERT (struct pf_state*) ;
 scalar_t__ PF_TCPS_PROXY_SRC ;
 scalar_t__ SEQ_GT (int ,int ) ;
 scalar_t__ TCPS_SYN_SENT ;
 int ntohl (int ) ;
 int pf_state_peer_ntoh (struct pfsync_state_peer*,TYPE_1__*) ;

__attribute__((used)) static int
pfsync_upd_tcp(struct pf_state *st, struct pfsync_state_peer *src,
    struct pfsync_state_peer *dst)
{
 int sync = 0;

 PF_STATE_LOCK_ASSERT(st);






 if ((st->src.state > src->state &&
     (st->src.state < PF_TCPS_PROXY_SRC ||
     src->state >= PF_TCPS_PROXY_SRC)) ||

     (st->src.state == src->state &&
     SEQ_GT(st->src.seqlo, ntohl(src->seqlo))))
  sync++;
 else
  pf_state_peer_ntoh(src, &st->src);

 if ((st->dst.state > dst->state) ||

     (st->dst.state >= TCPS_SYN_SENT &&
     SEQ_GT(st->dst.seqlo, ntohl(dst->seqlo))))
  sync++;
 else
  pf_state_peer_ntoh(dst, &st->dst);

 return (sync);
}
