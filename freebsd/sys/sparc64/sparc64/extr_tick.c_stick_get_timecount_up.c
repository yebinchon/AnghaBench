
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct timecounter {int dummy; } ;


 scalar_t__ rdstick () ;

__attribute__((used)) static u_int
stick_get_timecount_up(struct timecounter *tc)
{

 return ((u_int)rdstick());
}
