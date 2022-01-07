
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int V_in6_tmpaddrtimer_ch ;
 int V_ip6_desync_factor ;
 int V_ip6_temp_preferred_lifetime ;
 int V_ip6_temp_regen_advance ;
 int callout_init (int *,int ) ;
 int callout_reset (int *,int,int ,int ) ;
 int curvnet ;
 int hz ;
 int in6_tmpaddrtimer ;

__attribute__((used)) static void
in6_ifattach_init(void *dummy)
{


 callout_init(&V_in6_tmpaddrtimer_ch, 0);
 callout_reset(&V_in6_tmpaddrtimer_ch,
     (V_ip6_temp_preferred_lifetime - V_ip6_desync_factor -
     V_ip6_temp_regen_advance) * hz,
     in6_tmpaddrtimer, curvnet);
}
