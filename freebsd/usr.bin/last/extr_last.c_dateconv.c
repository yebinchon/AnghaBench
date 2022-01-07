
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; int tm_isdst; void* tm_min; void* tm_hour; void* tm_mday; void* tm_mon; void* tm_sec; } ;


 void* ATOI2 (char*) ;
 struct tm* localtime (int*) ;
 int mktime (struct tm*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ time (int*) ;
 int xo_err (int,char*) ;
 int xo_errx (int,char*) ;

__attribute__((used)) static time_t
dateconv(char *arg)
{
        time_t timet;
        struct tm *t;
        int yearset;
        char *p;


        if (time(&timet) < 0)
                xo_err(1, "time");
        if ((t = localtime(&timet)) == ((void*)0))
                xo_err(1, "localtime");


        if ((p = strchr(arg, '.')) == ((void*)0))
                t->tm_sec = 0;
        else {
                if (strlen(p + 1) != 2)
                        goto terr;
                *p++ = '\0';
                t->tm_sec = ATOI2(p);
        }

        yearset = 0;
        switch (strlen(arg)) {
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
                        if (yearset < 69)
                                t->tm_year = yearset + 2000;
                        else
                                t->tm_year = yearset + 1900;
                }
                t->tm_year -= 1900;

        case 8:
                t->tm_mon = ATOI2(arg);
                --t->tm_mon;
                t->tm_mday = ATOI2(arg);
                t->tm_hour = ATOI2(arg);
                t->tm_min = ATOI2(arg);
                break;
        case 4:
                t->tm_hour = ATOI2(arg);
                t->tm_min = ATOI2(arg);
                break;
        default:
                goto terr;
        }
        t->tm_isdst = -1;
        timet = mktime(t);
        if (timet == -1)
terr: xo_errx(1,
        "out of range or illegal time specification: [[CC]YY]MMDDhhmm[.SS]");
        return timet;
}
