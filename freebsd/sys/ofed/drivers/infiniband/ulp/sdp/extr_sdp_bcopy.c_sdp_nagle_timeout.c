
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sb_sndptr; } ;
struct socket {TYPE_1__ so_snd; } ;
struct sdp_sock {scalar_t__ state; int nagle_timer; struct socket* socket; scalar_t__ nagle_last_unacked; } ;


 int M_NOWAIT ;
 int SDP_NAGLE_TIMEOUT ;
 scalar_t__ TCPS_CLOSED ;
 int callout_active (int *) ;
 int callout_deactivate (int *) ;
 int callout_reset (int *,int ,void (*) (void*),struct sdp_sock*) ;
 int sdp_dbg_data (struct socket*,char*,scalar_t__) ;
 int sdp_post_sends (struct sdp_sock*,int ) ;
 int sowwakeup (struct socket*) ;

__attribute__((used)) static void
sdp_nagle_timeout(void *data)
{
 struct sdp_sock *ssk = (struct sdp_sock *)data;
 struct socket *sk = ssk->socket;

 sdp_dbg_data(sk, "last_unacked = %ld\n", ssk->nagle_last_unacked);

 if (!callout_active(&ssk->nagle_timer))
  return;
 callout_deactivate(&ssk->nagle_timer);

 if (!ssk->nagle_last_unacked)
  goto out;
 if (ssk->state == TCPS_CLOSED)
  return;
 ssk->nagle_last_unacked = 0;
 sdp_post_sends(ssk, M_NOWAIT);

 sowwakeup(ssk->socket);
out:
 if (sk->so_snd.sb_sndptr)
  callout_reset(&ssk->nagle_timer, SDP_NAGLE_TIMEOUT,
      sdp_nagle_timeout, ssk);
}
