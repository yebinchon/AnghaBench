
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct clocktime {int nsec; int sec; int min; int hour; int day; int mon; int year; } ;
typedef int device_t ;
typedef int cell_t ;


 int EAGAIN ;
 int ENXIO ;
 int clock_ts_to_ct (struct timespec*,struct clocktime*) ;
 int rtas_call_method (int,int,int,int ,int ,int ,int ,int ,int ,int ,int*) ;
 int rtas_token_lookup (char*) ;

__attribute__((used)) static int
rtas_settime(device_t dev, struct timespec *ts)
{
 struct clocktime ct;
 cell_t token, status;
 int error;

 token = rtas_token_lookup("set-time-of-day");
 if (token == -1)
  return (ENXIO);

 clock_ts_to_ct(ts, &ct);
 error = rtas_call_method(token, 7, 1, ct.year, ct.mon, ct.day, ct.hour,
     ct.min, ct.sec, ct.nsec, &status);
 if (error < 0)
  return (ENXIO);
 if (status != 0)
  return (((int)status < 0) ? ENXIO : EAGAIN);

 return (0);
}
