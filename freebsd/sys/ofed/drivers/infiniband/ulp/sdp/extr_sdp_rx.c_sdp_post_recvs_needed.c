
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdp_sock {int recv_bytes; TYPE_1__* socket; int qp_active; } ;
struct TYPE_4__ {int sb_hiwat; } ;
struct TYPE_3__ {TYPE_2__ so_rcv; } ;


 int SDP_MIN_TX_CREDITS ;
 int SDP_RX_SIZE ;
 unsigned long max (int ,int) ;
 unsigned long rcvbuf_scale ;
 int rx_ring_posted (struct sdp_sock*) ;
 scalar_t__ sbused (TYPE_2__*) ;

__attribute__((used)) static inline int
sdp_post_recvs_needed(struct sdp_sock *ssk)
{
 unsigned long bytes_in_process;
 unsigned long max_bytes;
 int buffer_size;
 int posted;

 if (!ssk->qp_active || !ssk->socket)
  return 0;

 posted = rx_ring_posted(ssk);
 if (posted >= SDP_RX_SIZE)
  return 0;
 if (posted < SDP_MIN_TX_CREDITS)
  return 1;

 buffer_size = ssk->recv_bytes;
 max_bytes = max(ssk->socket->so_rcv.sb_hiwat,
     (1 + SDP_MIN_TX_CREDITS) * buffer_size);
 max_bytes *= rcvbuf_scale;



 bytes_in_process = (posted - SDP_MIN_TX_CREDITS) * buffer_size;
 bytes_in_process += sbused(&ssk->socket->so_rcv);

 return bytes_in_process < max_bytes;
}
