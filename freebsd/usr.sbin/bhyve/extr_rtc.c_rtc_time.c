
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct vmctx {int dummy; } ;
struct tm {int dummy; } ;


 int localtime_r (int *,struct tm*) ;
 int time (int *) ;
 int timegm (struct tm*) ;

__attribute__((used)) static time_t
rtc_time(struct vmctx *ctx, int use_localtime)
{
 struct tm tm;
 time_t t;

 time(&t);
 if (use_localtime) {
  localtime_r(&t, &tm);
  t = timegm(&tm);
 }
 return (t);
}
