
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cr_ticks; int cr_rate; } ;
struct TYPE_4__ {TYPE_1__ cr; } ;


 int BANDLIM_MAX ;
 int M_WAITOK ;
 TYPE_2__* V_icmp_rates ;
 int counter_u64_alloc (int ) ;
 int ticks ;

__attribute__((used)) static void
icmp_bandlimit_init(void)
{

 for (int i = 0; i < BANDLIM_MAX; i++) {
  V_icmp_rates[i].cr.cr_rate = counter_u64_alloc(M_WAITOK);
  V_icmp_rates[i].cr.cr_ticks = ticks;
 }
}
