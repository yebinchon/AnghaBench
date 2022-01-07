
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int8_t ;
typedef int u_int16_t ;
struct timespec {int tv_sec; } ;


 int smb_time_local2server (struct timespec*,int,int *) ;
 int timespec2fattime (struct timespec*,int,int *,int *,int *) ;

void
smb_time_unix2dos(struct timespec *tsp, int tzoff, u_int16_t *ddp,
 u_int16_t *dtp, u_int8_t *dhp)
{
 struct timespec tt;
 u_long t;

 tt = *tsp;
 smb_time_local2server(tsp, tzoff, &t);
 tt.tv_sec = t;
 timespec2fattime(&tt, 1, ddp, dtp, dhp);
}
