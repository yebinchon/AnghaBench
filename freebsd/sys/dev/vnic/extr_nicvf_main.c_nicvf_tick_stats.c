
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {int stats_callout; } ;


 int callout_reset (int *,int ,void (*) (void*),struct nicvf*) ;
 int hz ;
 int nicvf_update_stats (struct nicvf*) ;

__attribute__((used)) static void
nicvf_tick_stats(void *arg)
{
 struct nicvf *nic;

 nic = (struct nicvf *)arg;


 nicvf_update_stats(nic);

 callout_reset(&nic->stats_callout, hz, nicvf_tick_stats, nic);
}
