
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; int tm_isdst; void* tm_min; void* tm_hour; void* tm_mday; void* tm_mon; void* tm_sec; } ;
struct timeval {int tv_sec; } ;


 void* ATOI2 (char const*) ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;
 struct tm* localtime (int*) ;
 int mktime (struct tm*) ;
 int panic (char*) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static time_t
ttime(const char *arg)
{





    struct timeval tv[2];
    time_t now;
    struct tm *t;
    int yearset;
    char *p;

    if (gettimeofday(&tv[0], ((void*)0)))
 panic("Cannot get current time");


    now = tv[0].tv_sec;
    if ((t = localtime(&now)) == ((void*)0))
 panic("localtime");

    if ((p = strchr(arg, '.')) == ((void*)0))
 t->tm_sec = 0;
    else {
 if (strlen(p + 1) != 2)
     goto terr;
 *p++ = '\0';
 t->tm_sec = ATOI2(p);
    }

    yearset = 0;
    switch(strlen(arg)) {
    case 12:
 t->tm_year = ATOI2(arg);
 t->tm_year *= 100;
 yearset = 1;

    case 10:
 if (yearset) {
     yearset = ATOI2(arg);
     t->tm_year += yearset;
 } else {
     yearset = ATOI2(arg);
     t->tm_year = yearset + 2000;
 }
 t->tm_year -= 1900;

    case 8:
 t->tm_mon = ATOI2(arg);
 --t->tm_mon;
 t->tm_mday = ATOI2(arg);
 t->tm_hour = ATOI2(arg);
 t->tm_min = ATOI2(arg);
 break;
    default:
 goto terr;
    }

    t->tm_isdst = -1;
    tv[0].tv_sec = tv[1].tv_sec = mktime(t);
    if (tv[0].tv_sec != -1)
 return tv[0].tv_sec;
    else
terr:
 panic(
    "out of range or illegal time specification: [[CC]YY]MMDDhhmm[.SS]");
}
