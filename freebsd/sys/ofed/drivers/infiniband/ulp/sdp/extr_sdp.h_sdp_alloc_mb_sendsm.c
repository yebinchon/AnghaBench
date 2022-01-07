
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct mbuf {int dummy; } ;


 int SDP_MID_SENDSM ;
 struct mbuf* sdp_alloc_mb (struct socket*,int ,int ,int) ;

__attribute__((used)) static inline struct mbuf *
sdp_alloc_mb_sendsm(struct socket *sk, int wait)
{
 return sdp_alloc_mb(sk, SDP_MID_SENDSM, 0, wait);
}
