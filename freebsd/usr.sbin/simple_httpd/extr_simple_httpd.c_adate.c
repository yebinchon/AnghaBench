
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; int tm_mday; int tm_mon; int tm_year; } ;


 struct tm* localtime (int *) ;
 int sprintf (char*,char*,int,int,int,int,int,int) ;
 int time (int *) ;

char *
adate(void)
{
 static char out[50];
 time_t now;
 struct tm *t;
 time(&now);
 t = localtime(&now);
 sprintf(out, "%02d:%02d:%02d %02d/%02d/%02d",
       t->tm_hour, t->tm_min, t->tm_sec,
       t->tm_mday, t->tm_mon+1, t->tm_year );
 return out;
}
