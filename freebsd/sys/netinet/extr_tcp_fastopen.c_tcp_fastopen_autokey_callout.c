
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_fastopen_callout {int c; int v; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int V_tcp_fastopen_autokey ;
 int callout_reset (int *,int,void (*) (void*),struct tcp_fastopen_callout*) ;
 int hz ;
 int tcp_fastopen_autokey_locked () ;

__attribute__((used)) static void
tcp_fastopen_autokey_callout(void *arg)
{
 struct tcp_fastopen_callout *ctx = arg;

 CURVNET_SET(ctx->v);
 tcp_fastopen_autokey_locked();
 callout_reset(&ctx->c, V_tcp_fastopen_autokey * hz,
        tcp_fastopen_autokey_callout, ctx);
 CURVNET_RESTORE();
}
