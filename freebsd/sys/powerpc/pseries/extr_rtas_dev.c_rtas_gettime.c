
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct clocktime {int year; int mon; int day; int hour; int min; int sec; int nsec; } ;
typedef int device_t ;
typedef int cell_t ;


 int EAGAIN ;
 int ENXIO ;
 int clock_ct_to_ts (struct clocktime*,struct timespec*) ;
 int rtas_call_method (int,int ,int,int*,int*,int*,int*,int*,int*,int*,int*) ;
 int rtas_token_lookup (char*) ;

__attribute__((used)) static int
rtas_gettime(device_t dev, struct timespec *ts) {
 struct clocktime ct;
 cell_t tod[8];
 cell_t token;
 int error;

 token = rtas_token_lookup("get-time-of-day");
 if (token == -1)
  return (ENXIO);
 error = rtas_call_method(token, 0, 8, &tod[0], &tod[1], &tod[2],
     &tod[3], &tod[4], &tod[5], &tod[6], &tod[7]);
 if (error < 0)
  return (ENXIO);
 if (tod[0] != 0)
  return ((tod[0] == -1) ? ENXIO : EAGAIN);

 ct.year = tod[1];
 ct.mon = tod[2];
 ct.day = tod[3];
 ct.hour = tod[4];
 ct.min = tod[5];
 ct.sec = tod[6];
 ct.nsec = tod[7];

 return (clock_ct_to_ts(&ct, ts));
}
