
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef scalar_t__ time_t ;



__attribute__((used)) static u_int64_t
riscos_date(time_t unixtime)
{
 u_int64_t base;

 base = 31536000ULL * 70 + 86400 * 17;
 return (((u_int64_t)unixtime) + base)*100;
}
