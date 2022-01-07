
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdp_sock {int flags; int keep2msl; TYPE_1__* socket; } ;
struct TYPE_2__ {int so_options; } ;


 int SDP_DROPPED ;
 int SDP_KEEPALIVE_TIME ;
 int SDP_WUNLOCK (struct sdp_sock*) ;
 int SO_KEEPALIVE ;
 int callout_active (int *) ;
 int callout_deactivate (int *) ;
 scalar_t__ callout_pending (int *) ;
 int callout_reset (int *,int ,void (*) (void*),struct sdp_sock*) ;
 int sdp_post_keepalive (struct sdp_sock*) ;

__attribute__((used)) static void
sdp_keepalive_timeout(void *data)
{
 struct sdp_sock *ssk;

 ssk = data;

        if (!callout_active(&ssk->keep2msl))
                return;

 if (callout_pending(&ssk->keep2msl))
  goto out;
        callout_deactivate(&ssk->keep2msl);
 if (ssk->flags & SDP_DROPPED ||
     (ssk->socket->so_options & SO_KEEPALIVE) == 0)
  goto out;
 sdp_post_keepalive(ssk);
 callout_reset(&ssk->keep2msl, SDP_KEEPALIVE_TIME,
     sdp_keepalive_timeout, ssk);
out:
 SDP_WUNLOCK(ssk);
}
