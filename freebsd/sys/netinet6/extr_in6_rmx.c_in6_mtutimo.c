
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnet {int dummy; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct mtuex_arg {int dummy; } ;


 int AF_INET6 ;
 int CURVNET_RESTORE () ;
 int CURVNET_SET_QUIET (struct vnet*) ;
 int MTUTIMO_DEFAULT ;
 int V_rtq_mtutimer ;
 int callout_reset (int *,int ,void (*) (void*),void*) ;
 int in6_mtuexpire ;
 int in6_mtutimo_setwa ;
 int rt_foreach_fib_walk (int ,int ,int ,struct mtuex_arg*) ;
 int tvtohz (struct timeval*) ;

__attribute__((used)) static void
in6_mtutimo(void *rock)
{
 CURVNET_SET_QUIET((struct vnet *) rock);
 struct timeval atv;
 struct mtuex_arg arg;

 rt_foreach_fib_walk(AF_INET6, in6_mtutimo_setwa, in6_mtuexpire, &arg);

 atv.tv_sec = MTUTIMO_DEFAULT;
 atv.tv_usec = 0;
 callout_reset(&V_rtq_mtutimer, tvtohz(&atv), in6_mtutimo, rock);
 CURVNET_RESTORE();
}
