
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timecounter {int dummy; } ;


 scalar_t__ octeon_get_ticks () ;

__attribute__((used)) static unsigned
octeon_get_timecount(struct timecounter *tc)
{
 return ((unsigned)octeon_get_ticks());
}
