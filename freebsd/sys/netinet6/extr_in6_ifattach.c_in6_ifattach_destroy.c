
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int V_in6_tmpaddrtimer_ch ;
 int callout_drain (int *) ;

void
in6_ifattach_destroy(void)
{

 callout_drain(&V_in6_tmpaddrtimer_ch);
}
