
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dadq {int dad_timer_ch; } ;


 int callout_drain (int *) ;

__attribute__((used)) static void
nd6_dad_stoptimer(struct dadq *dp)
{

 callout_drain(&dp->dad_timer_ch);
}
