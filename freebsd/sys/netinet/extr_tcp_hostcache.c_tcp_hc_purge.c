
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnet {int dummy; } ;
struct TYPE_2__ {int prune; scalar_t__ purgeall; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (struct vnet*) ;
 int V_tcp_hc_callout ;
 TYPE_1__ V_tcp_hostcache ;
 int callout_reset (int *,int,void (*) (void*),void*) ;
 int hz ;
 int tcp_hc_purge_internal (int) ;

__attribute__((used)) static void
tcp_hc_purge(void *arg)
{
 CURVNET_SET((struct vnet *) arg);
 int all = 0;

 if (V_tcp_hostcache.purgeall) {
  all = 1;
  V_tcp_hostcache.purgeall = 0;
 }

 tcp_hc_purge_internal(all);

 callout_reset(&V_tcp_hc_callout, V_tcp_hostcache.prune * hz,
     tcp_hc_purge, arg);
 CURVNET_RESTORE();
}
