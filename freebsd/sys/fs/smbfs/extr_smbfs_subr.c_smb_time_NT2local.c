
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int int64_t ;


 scalar_t__ DIFF1970TO1601 ;
 int smb_time_server2local (scalar_t__,int ,struct timespec*) ;

void
smb_time_NT2local(int64_t nsec, int tzoff, struct timespec *tsp)
{
 smb_time_server2local(nsec / 10000000 - DIFF1970TO1601, 0, tsp);
}
