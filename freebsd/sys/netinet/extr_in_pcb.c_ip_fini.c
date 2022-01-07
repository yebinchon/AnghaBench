
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int callout_stop (int *) ;
 int ipport_tick_callout ;

__attribute__((used)) static void
ip_fini(void *xtp)
{

 callout_stop(&ipport_tick_callout);
}
