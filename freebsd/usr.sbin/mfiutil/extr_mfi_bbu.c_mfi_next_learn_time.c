
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int tm ;
typedef scalar_t__ time_t ;
struct tm {int tm_year; } ;


 char* ctime (scalar_t__*) ;
 int memset (struct tm*,int ,int) ;
 size_t snprintf (char*,size_t,char*,char*) ;
 scalar_t__ timegm (struct tm*) ;

void
mfi_next_learn_time(uint32_t next_learn_time, char *buf, size_t sz)
{
 time_t basetime;
 struct tm tm;
 size_t len;

 memset(&tm, 0, sizeof(tm));
 tm.tm_year = 100;
 basetime = timegm(&tm);
 basetime += (time_t)next_learn_time;
 len = snprintf(buf, sz, "%s", ctime(&basetime));
 if (len > 0)

  buf[len - 1] = '\0';
}
