
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk_socket; } ;
struct sdp_sock {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int SDPSTATS_COUNTER_INC (int ) ;
 int SOCK_NOSPACE ;
 int sdp_dbg_data (struct socket*,char*) ;
 int sdp_do_posts (struct sdp_sock*) ;
 struct sdp_sock* sdp_sk (struct socket*) ;
 int sdp_tx_wait_memory (struct sdp_sock*,long*,int*) ;
 int sdp_xmit_poll (struct sdp_sock*,int) ;
 int send_wait_for_mem ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline int wait_for_sndbuf(struct socket *sk, long *timeo_p)
{
 struct sdp_sock *ssk = sdp_sk(sk);
 int ret = 0;
 int credits_needed = 1;

 sdp_dbg_data(sk, "Wait for mem\n");

 set_bit(SOCK_NOSPACE, &sk->sk_socket->flags);

 SDPSTATS_COUNTER_INC(send_wait_for_mem);

 sdp_do_posts(ssk);

 sdp_xmit_poll(ssk, 1);

 ret = sdp_tx_wait_memory(ssk, timeo_p, &credits_needed);

 return ret;
}
