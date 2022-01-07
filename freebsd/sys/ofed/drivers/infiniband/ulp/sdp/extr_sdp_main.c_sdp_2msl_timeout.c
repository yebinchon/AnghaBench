
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_sock {int flags; int shutdown_task; int keep2msl; } ;


 int SDP_TIMEWAIT ;
 int SDP_WUNLOCK (struct sdp_sock*) ;
 int callout_active (int *) ;
 int callout_deactivate (int *) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static void
sdp_2msl_timeout(void *data)
{
 struct sdp_sock *ssk;

 ssk = data;

        if (!callout_active(&ssk->keep2msl))
  goto out;
        callout_deactivate(&ssk->keep2msl);

 if ((ssk->flags & SDP_TIMEWAIT) == 0)
  goto out;
 taskqueue_enqueue(taskqueue_thread, &ssk->shutdown_task);
out:
 SDP_WUNLOCK(ssk);
 return;
}
