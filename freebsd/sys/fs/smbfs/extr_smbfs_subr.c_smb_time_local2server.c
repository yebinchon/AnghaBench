
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct timespec {scalar_t__ tv_sec; } ;



void
smb_time_local2server(struct timespec *tsp, int tzoff, u_long *seconds)
{
 *seconds = tsp->tv_sec - tzoff * 60 ;

}
