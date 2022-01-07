
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct timecounter {int dummy; } ;


 int mfence () ;
 int tsc_get_timecount_low (struct timecounter*) ;

__attribute__((used)) static u_int
tsc_get_timecount_low_mfence(struct timecounter *tc)
{

 mfence();
 return (tsc_get_timecount_low(tc));
}
