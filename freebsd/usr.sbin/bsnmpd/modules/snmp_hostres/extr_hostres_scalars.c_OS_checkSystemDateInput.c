
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; scalar_t__ tm_isdst; } ;
struct timeval {int tv_sec; int tv_usec; } ;
typedef int int32_t ;


 struct timeval* malloc (int) ;
 int timegm (struct tm*) ;

__attribute__((used)) static struct timeval *
OS_checkSystemDateInput(const u_char *str, u_int len)
{
 struct tm tm_to_set;
 time_t t;
 struct timeval *tv;

 if (len != 8 && len != 11)
  return (((void*)0));

 if (str[2] == 0 || str[2] > 12 ||
     str[3] == 0 || str[3] > 31 ||
     str[4] > 23 || str[5] > 59 || str[6] > 60 || str[7] > 9)
  return (((void*)0));

 tm_to_set.tm_year = ((str[0] << 8) + str[1]) - 1900;
 tm_to_set.tm_mon = str[2] - 1;
 tm_to_set.tm_mday = str[3];
 tm_to_set.tm_hour = str[4];
 tm_to_set.tm_min = str[5];
 tm_to_set.tm_sec = str[6];
 tm_to_set.tm_isdst = 0;


 if ((t = timegm(&tm_to_set)) == (time_t)-1)
  return (((void*)0));


 if (len == 11) {
  if (str[9] > 13 || str[10] > 59)
   return (((void*)0));
  if (str[8] == '+')
   t += 3600 * str[9] + 60 * str[10];
  else
   t -= 3600 * str[9] + 60 * str[10];
 }

 if ((tv = malloc(sizeof(*tv))) == ((void*)0))
  return (((void*)0));

 tv->tv_sec = t;
 tv->tv_usec = (int32_t)str[7] * 100000;

 return (tv);
}
