
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sdp_sock {scalar_t__ xmit_size_goal; } ;
struct sdp_chrecvbuf {int size; } ;


 scalar_t__ ntohl (int ) ;

__attribute__((used)) static void
sdp_handle_resize_ack(struct sdp_sock *ssk, struct sdp_chrecvbuf *buf)
{
 u32 new_size = ntohl(buf->size);

 if (new_size > ssk->xmit_size_goal)
  ssk->xmit_size_goal = new_size;
}
