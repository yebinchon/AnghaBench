
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sctp_frag_point; int peer_hmac_id; int peer_auth_chunks; } ;
struct sctp_tcb {TYPE_1__ asoc; TYPE_2__* sctp_ep; } ;
struct sctp_association {int smallest_mtu; } ;
struct TYPE_4__ {int sctp_flags; } ;


 int SCTP_DATA ;
 scalar_t__ SCTP_DATA_CHUNK_OVERHEAD (struct sctp_tcb*) ;
 int SCTP_MIN_OVERHEAD ;
 int SCTP_MIN_V4_OVERHEAD ;
 int SCTP_PCB_FLAGS_BOUND_V6 ;
 scalar_t__ sctp_auth_is_required_chunk (int ,int ) ;
 scalar_t__ sctp_get_auth_chunk_len (int ) ;

int
sctp_get_frag_point(struct sctp_tcb *stcb,
    struct sctp_association *asoc)
{
 int siz, ovh;






 if (stcb->sctp_ep->sctp_flags & SCTP_PCB_FLAGS_BOUND_V6) {
  ovh = SCTP_MIN_OVERHEAD;
 } else {
  ovh = SCTP_MIN_V4_OVERHEAD;
 }
 ovh += SCTP_DATA_CHUNK_OVERHEAD(stcb);
 if (stcb->asoc.sctp_frag_point > asoc->smallest_mtu)
  siz = asoc->smallest_mtu - ovh;
 else
  siz = (stcb->asoc.sctp_frag_point - ovh);
 if (sctp_auth_is_required_chunk(SCTP_DATA, stcb->asoc.peer_auth_chunks))
  siz -= sctp_get_auth_chunk_len(stcb->asoc.peer_hmac_id);

 if (siz % 4) {

  siz -= (siz % 4);
 }
 return (siz);
}
