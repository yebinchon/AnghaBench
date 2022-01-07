
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int numbuf ;
typedef scalar_t__ int64_t ;


 int HN_AUTOSCALE ;
 int HN_DIVISOR_1000 ;
 int HN_NOSPACE ;
 scalar_t__ hflag ;
 int humanize_number (char*,int,scalar_t__,char*,int ,int) ;
 int snprintf (char*,int,char*,int ) ;

char *
fmthumanvalinos(int64_t inos)
{
 static char numbuf[20];

 if (hflag) {
  humanize_number(numbuf, inos < 0 ? 7 : 6,
      inos, "", HN_AUTOSCALE, HN_NOSPACE | HN_DIVISOR_1000);
  return (numbuf);
 }
 snprintf(numbuf, sizeof(numbuf), "%ju", (uintmax_t)inos);
 return(numbuf);
}
