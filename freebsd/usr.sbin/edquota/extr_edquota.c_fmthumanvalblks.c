
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int numbuf ;
typedef scalar_t__ int64_t ;


 int HN_AUTOSCALE ;
 int HN_NOSPACE ;
 int dbtob (scalar_t__) ;
 scalar_t__ dbtokb (scalar_t__) ;
 scalar_t__ hflag ;
 int humanize_number (char*,int,int ,char*,int ,int ) ;
 int snprintf (char*,int,char*,int ) ;

char *
fmthumanvalblks(int64_t blocks)
{
 static char numbuf[20];

 if (hflag) {
  humanize_number(numbuf, blocks < 0 ? 7 : 6,
      dbtob(blocks), "", HN_AUTOSCALE, HN_NOSPACE);
  return (numbuf);
 }
 snprintf(numbuf, sizeof(numbuf), "%juk", (uintmax_t)dbtokb(blocks));
 return(numbuf);
}
