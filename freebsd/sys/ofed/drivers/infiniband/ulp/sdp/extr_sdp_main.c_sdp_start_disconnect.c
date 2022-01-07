
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_options; scalar_t__ so_linger; int so_rcv; } ;
struct sdp_sock {scalar_t__ state; int flags; struct socket* socket; } ;


 int KASSERT (int ,char*) ;
 int SDP_DROPPED ;
 int SDP_WLOCK_ASSERT (struct sdp_sock*) ;
 int SO_LINGER ;
 scalar_t__ TCPS_ESTABLISHED ;
 int sbflush (int *) ;
 int sbused (int *) ;
 struct sdp_sock* sdp_closed (struct sdp_sock*) ;
 struct sdp_sock* sdp_drop (struct sdp_sock*,int ) ;
 int sdp_output_disconnect (struct sdp_sock*) ;
 int sdp_output_reset (struct sdp_sock*) ;
 int sdp_stop_keepalive_timer (struct socket*) ;
 int sdp_usrclosed (struct sdp_sock*) ;
 int soisdisconnecting (struct socket*) ;

__attribute__((used)) static void
sdp_start_disconnect(struct sdp_sock *ssk)
{
 struct socket *so;
 int unread;

 so = ssk->socket;
 SDP_WLOCK_ASSERT(ssk);
 sdp_stop_keepalive_timer(so);




 if (ssk->state < TCPS_ESTABLISHED) {
  ssk = sdp_closed(ssk);
  KASSERT(ssk != ((void*)0),
      ("sdp_start_disconnect: sdp_close() returned NULL"));
 } else if ((so->so_options & SO_LINGER) && so->so_linger == 0) {
  ssk = sdp_drop(ssk, 0);
  KASSERT(ssk != ((void*)0),
      ("sdp_start_disconnect: sdp_drop() returned NULL"));
 } else {
  soisdisconnecting(so);
  unread = sbused(&so->so_rcv);
  sbflush(&so->so_rcv);
  sdp_usrclosed(ssk);
  if (!(ssk->flags & SDP_DROPPED)) {
   if (unread)
    sdp_output_reset(ssk);
   else
    sdp_output_disconnect(ssk);
  }
 }
}
