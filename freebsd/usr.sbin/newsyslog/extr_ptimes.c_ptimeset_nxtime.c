
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tm_mon; int tm_mday; int tm_year; int tm_isdst; } ;
struct ptime_data {int tmspec; int tsecs; TYPE_1__ tm; } ;


 int SECS_PER_HOUR ;
 int TSPEC_DAYOFMONTH ;
 int TSPEC_DAYOFWEEK ;
 int TSPEC_HOUROFDAY ;
 int TSPEC_LDAYOFMONTH ;
 int TSPEC_MONTHOFYEAR ;
 int TSPEC_YEAR ;
 int days_pmonth (int,int) ;
 TYPE_1__* localtime (int*) ;
 int mktime (TYPE_1__*) ;
 int ptime_adjust4dst (struct ptime_data*,struct ptime_data*) ;

int
ptimeset_nxtime(struct ptime_data *ptime)
{
 int moredays, tdpm, tmon, tyear;
 struct ptime_data nextmatch;

 if (ptime == ((void*)0))
  return (-1);





 nextmatch = *ptime;




 if (ptime->tmspec & TSPEC_YEAR)
  return (-1);







 moredays = 0;
 if (ptime->tmspec & TSPEC_MONTHOFYEAR) {

  if (ptime->tm.tm_mon == 1 && ptime->tm.tm_mday == 29) {
   nextmatch.tm.tm_year += 4;
   if (days_pmonth(1, nextmatch.tm.tm_year) < 29)
    nextmatch.tm.tm_year += 4;
  } else {
   nextmatch.tm.tm_year += 1;
  }
  nextmatch.tm.tm_isdst = -1;
  nextmatch.tsecs = mktime(&nextmatch.tm);

 } else if (ptime->tmspec & TSPEC_LDAYOFMONTH) {





  if (ptime->tm.tm_mon < 11)
   moredays = days_pmonth(ptime->tm.tm_mon + 1,
       ptime->tm.tm_year);
  else
   moredays = days_pmonth(0, ptime->tm.tm_year + 1);

 } else if (ptime->tmspec & TSPEC_DAYOFMONTH) {

  moredays = days_pmonth(ptime->tm.tm_mon, ptime->tm.tm_year);





  tmon = ptime->tm.tm_mon;
  tyear = ptime->tm.tm_year;
  for (;;) {
   if (tmon < 11)
    tmon += 1;
   else {
    tmon = 0;
    tyear += 1;
   }
   tdpm = days_pmonth(tmon, tyear);
   if (tdpm >= ptime->tm.tm_mday)
    break;
   moredays += tdpm;
  }

 } else if (ptime->tmspec & TSPEC_DAYOFWEEK) {
  moredays = 7;
 } else if (ptime->tmspec & TSPEC_HOUROFDAY) {
  moredays = 1;
 }

 if (moredays != 0) {
  nextmatch.tsecs += SECS_PER_HOUR * 24 * moredays;
  nextmatch.tm = *(localtime(&nextmatch.tsecs));
 }





 ptime_adjust4dst(&nextmatch, ptime);


 *ptime = nextmatch;
 return (0);
}
