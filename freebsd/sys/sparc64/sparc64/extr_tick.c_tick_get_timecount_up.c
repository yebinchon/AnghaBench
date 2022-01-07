
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct timecounter {int dummy; } ;


 scalar_t__ rd (int ) ;
 int tick ;

__attribute__((used)) static u_int
tick_get_timecount_up(struct timecounter *tc)
{

 return ((u_int)rd(tick));
}
