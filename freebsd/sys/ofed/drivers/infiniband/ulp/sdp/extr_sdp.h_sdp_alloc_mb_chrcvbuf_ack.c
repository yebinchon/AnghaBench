
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sdp_chrecvbuf {int size; } ;
struct mbuf {int dummy; } ;


 int SDP_MID_CHRCVBUF_ACK ;
 int htonl (int) ;
 scalar_t__ mb_put (struct mbuf*,int) ;
 struct mbuf* sdp_alloc_mb (struct socket*,int ,int,int) ;

__attribute__((used)) static inline struct mbuf *
sdp_alloc_mb_chrcvbuf_ack(struct socket *sk, int size, int wait)
{
 struct mbuf *mb;
 struct sdp_chrecvbuf *resp_size;

 mb = sdp_alloc_mb(sk, SDP_MID_CHRCVBUF_ACK, sizeof(*resp_size), wait);
 if (mb == ((void*)0))
  return (((void*)0));
 resp_size = (struct sdp_chrecvbuf *)mb_put(mb, sizeof *resp_size);
 resp_size->size = htonl(size);

 return mb;
}
