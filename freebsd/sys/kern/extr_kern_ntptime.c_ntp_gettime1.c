
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int tv_nsec; int tv_sec; } ;
struct TYPE_2__ {int tv_nsec; int tv_sec; } ;
struct ntptimeval {int time_state; int tai; int esterror; int maxerror; TYPE_1__ time; } ;


 int NTP_ASSERT_LOCKED () ;
 int TIME_ERROR ;
 int nanotime (struct timespec*) ;
 scalar_t__ ntp_is_time_error (int ) ;
 int time_esterror ;
 int time_maxerror ;
 int time_state ;
 int time_status ;
 int time_tai ;

__attribute__((used)) static void
ntp_gettime1(struct ntptimeval *ntvp)
{
 struct timespec atv;

 NTP_ASSERT_LOCKED();

 nanotime(&atv);
 ntvp->time.tv_sec = atv.tv_sec;
 ntvp->time.tv_nsec = atv.tv_nsec;
 ntvp->maxerror = time_maxerror;
 ntvp->esterror = time_esterror;
 ntvp->tai = time_tai;
 ntvp->time_state = time_state;

 if (ntp_is_time_error(time_status))
  ntvp->time_state = TIME_ERROR;
}
