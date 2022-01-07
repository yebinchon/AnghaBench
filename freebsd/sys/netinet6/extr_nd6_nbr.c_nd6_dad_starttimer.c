
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dadq {int dad_timer_ch; } ;


 int NET_EPOCH_ASSERT () ;
 int callout_reset (int *,int,void (*) (void*),void*) ;
 int nd6_dad_ns_output (struct dadq*) ;
 scalar_t__ nd6_dad_timer ;

__attribute__((used)) static void
nd6_dad_starttimer(struct dadq *dp, int ticks, int send_ns)
{

 NET_EPOCH_ASSERT();

 if (send_ns != 0)
  nd6_dad_ns_output(dp);
 callout_reset(&dp->dad_timer_ch, ticks,
     (void (*)(void *))nd6_dad_timer, (void *)dp);
}
