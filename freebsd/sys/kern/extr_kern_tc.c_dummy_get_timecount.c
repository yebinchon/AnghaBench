
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct timecounter {int dummy; } ;



__attribute__((used)) static u_int
dummy_get_timecount(struct timecounter *tc)
{
 static u_int now;

 return (++now);
}
