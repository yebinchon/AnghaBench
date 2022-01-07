
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tm ;
struct tm {int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct TYPE_5__ {int d; scalar_t__ m; scalar_t__ y; } ;
typedef TYPE_1__ date ;
typedef int buf ;


 int D_MD_ORDER ;
 int MAX_WIDTH ;
 int easterg (int,TYPE_1__*) ;
 int easterog (int,TYPE_1__*) ;
 int easteroj (int,TYPE_1__*) ;
 int memset (struct tm*,int ,int) ;
 char* nl_langinfo (int ) ;
 int printf (char*,char*) ;
 int strftime (char*,int,char*,struct tm*) ;

__attribute__((used)) static void
printeaster(int y, int julian, int orthodox)
{
 date dt;
 struct tm tm;
 char buf[MAX_WIDTH];
 static int d_first = -1;

 if (d_first < 0)
  d_first = (*nl_langinfo(D_MD_ORDER) == 'd');

 if (y < 1583)
  orthodox = 1;

 if (orthodox)
  if (julian)
   easteroj(y, &dt);
  else
   easterog(y, &dt);
 else
  easterg(y, &dt);

 memset(&tm, 0, sizeof(tm));
 tm.tm_year = dt.y - 1900;
 tm.tm_mon = dt.m - 1;
 tm.tm_mday = dt.d;
 strftime(buf, sizeof(buf), d_first ? "%e %B %Y" : "%B %e %Y", &tm);
 printf("%s\n", buf);
}
