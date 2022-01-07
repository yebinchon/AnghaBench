
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callout {int c_cpu; int c_arg; int c_func; } ;


 int callout_reset_on (struct callout*,int,int ,int ,int ) ;

int
callout_schedule(struct callout *c, int to_ticks)
{
 return callout_reset_on(c, to_ticks, c->c_func, c->c_arg, c->c_cpu);
}
