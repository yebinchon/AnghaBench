
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdp_sock {int recv_bytes; } ;


 int sdp_get_recv_bytes (struct sdp_sock*,int ) ;
 int sdp_post_recvs (struct sdp_sock*) ;

int
sdp_init_buffers(struct sdp_sock *ssk, u32 new_size)
{

 ssk->recv_bytes = sdp_get_recv_bytes(ssk, new_size);
 sdp_post_recvs(ssk);

 return 0;
}
