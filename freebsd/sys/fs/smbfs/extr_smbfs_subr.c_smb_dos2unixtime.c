
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct timespec {int tv_sec; } ;


 int fattime2timespec (int ,int ,int ,int,struct timespec*) ;
 int smb_time_server2local (int ,int,struct timespec*) ;

void
smb_dos2unixtime(u_int dd, u_int dt, u_int dh, int tzoff,
 struct timespec *tsp)
{

 fattime2timespec(dd, dt, dh, 1, tsp);
 smb_time_server2local(tsp->tv_sec, tzoff, tsp);
}
