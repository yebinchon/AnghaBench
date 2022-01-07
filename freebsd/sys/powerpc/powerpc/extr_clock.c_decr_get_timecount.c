
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timecounter {int dummy; } ;


 int mftb () ;

__attribute__((used)) static unsigned
decr_get_timecount(struct timecounter *tc)
{
 return (mftb());
}
