
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct timespec {int dummy; } ;
typedef scalar_t__ seconds ;
typedef int int64_t ;


 int DIFF1970TO1601 ;
 int smb_time_local2server (struct timespec*,int ,int *) ;

void
smb_time_local2NT(struct timespec *tsp, int tzoff, int64_t *nsec)
{
 u_long seconds;

 smb_time_local2server(tsp, 0, &seconds);
 *nsec = (((int64_t)(seconds) & ~1) + DIFF1970TO1601) * (int64_t)10000000;
}
