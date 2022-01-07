
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_sock {int dummy; } ;


 scalar_t__ sdp_post_recv (struct sdp_sock*) ;
 scalar_t__ sdp_post_recvs_needed (struct sdp_sock*) ;

__attribute__((used)) static inline void
sdp_post_recvs(struct sdp_sock *ssk)
{

 while (sdp_post_recvs_needed(ssk))
  if (sdp_post_recv(ssk))
   return;
}
