
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct timespec {scalar_t__ tv_sec; } ;



void
smb_time_server2local(u_long seconds, int tzoff, struct timespec *tsp)
{
 tsp->tv_sec = seconds + tzoff * 60;
}
