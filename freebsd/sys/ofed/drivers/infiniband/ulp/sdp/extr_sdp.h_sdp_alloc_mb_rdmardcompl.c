
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct socket {int dummy; } ;
struct sdp_rrch {int len; } ;
struct mbuf {int dummy; } ;


 int SDP_MID_RDMARDCOMPL ;
 int htonl (int ) ;
 scalar_t__ mb_put (struct mbuf*,int) ;
 struct mbuf* sdp_alloc_mb (struct socket*,int ,int,int) ;

__attribute__((used)) static inline struct mbuf *
sdp_alloc_mb_rdmardcompl(struct socket *sk, u32 len, int wait)
{
 struct mbuf *mb;
 struct sdp_rrch *rrch;

 mb = sdp_alloc_mb(sk, SDP_MID_RDMARDCOMPL, sizeof(*rrch), wait);
 if (mb == ((void*)0))
  return (((void*)0));
 rrch = (struct sdp_rrch *)mb_put(mb, sizeof(*rrch));
 rrch->len = htonl(len);

 return mb;
}
