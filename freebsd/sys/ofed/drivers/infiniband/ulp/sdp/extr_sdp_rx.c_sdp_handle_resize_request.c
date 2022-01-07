
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_sock {int recv_request; int rx_ring; scalar_t__ recv_request_head; } ;
struct sdp_chrecvbuf {int size; } ;


 int ntohl (int ) ;
 scalar_t__ ring_head (int ) ;
 scalar_t__ ring_tail (int ) ;
 scalar_t__ sdp_resize_buffers (struct sdp_sock*,int ) ;

__attribute__((used)) static void
sdp_handle_resize_request(struct sdp_sock *ssk, struct sdp_chrecvbuf *buf)
{
 if (sdp_resize_buffers(ssk, ntohl(buf->size)) == 0)
  ssk->recv_request_head = ring_head(ssk->rx_ring) + 1;
 else
  ssk->recv_request_head = ring_tail(ssk->rx_ring);
 ssk->recv_request = 1;
}
