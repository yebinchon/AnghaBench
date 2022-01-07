
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; int tm_mday; int tm_wday; } ;
struct cal_year {int year; int firstdayofweek; struct cal_month* months; struct cal_year* nextyear; int paskha; int easter; } ;
struct cal_month {int month; int firstdayjulian; int firstdayofweek; struct cal_day* days; struct cal_month* nextmonth; struct cal_year* year; } ;
struct cal_day {int dayofmonth; int julianday; int dayofweek; struct cal_day* nextday; struct cal_year* year; struct cal_month* month; } ;


 scalar_t__ calloc (int,int) ;
 int** cumdaytab ;
 int easter (int) ;
 struct cal_year* hyear ;
 size_t isleap (int) ;
 int localtime_r (int *,struct tm*) ;
 int mktime (struct tm*) ;
 int paskha (int) ;
 struct tm tm0 ;

__attribute__((used)) static void
createdate(int y, int m, int d)
{
 struct cal_year *py, *pyp;
 struct cal_month *pm, *pmp;
 struct cal_day *pd, *pdp;
 int *cumday;

 pyp = ((void*)0);
 py = hyear;
 while (py != ((void*)0)) {
  if (py->year == y + 1900)
   break;
  pyp = py;
  py = py->nextyear;
 }

 if (py == ((void*)0)) {
  struct tm td;
  time_t t;
  py = (struct cal_year *)calloc(1, sizeof(struct cal_year));
  py->year = y + 1900;
  py->easter = easter(y);
  py->paskha = paskha(y);

  td = tm0;
  td.tm_year = y;
  td.tm_mday = 1;
  t = mktime(&td);
  localtime_r(&t, &td);
  py->firstdayofweek = td.tm_wday;

  if (pyp != ((void*)0))
   pyp->nextyear = py;
 }
 if (pyp == ((void*)0)) {

  hyear = py;
 }

 pmp = ((void*)0);
 pm = py->months;
 while (pm != ((void*)0)) {
  if (pm->month == m)
   break;
  pmp = pm;
  pm = pm->nextmonth;
 }

 if (pm == ((void*)0)) {
  pm = (struct cal_month *)calloc(1, sizeof(struct cal_month));
  pm->year = py;
  pm->month = m;
  cumday = cumdaytab[isleap(y)];
  pm->firstdayjulian = cumday[m] + 2;
  pm->firstdayofweek =
      (py->firstdayofweek + pm->firstdayjulian -1) % 7;
  if (pmp != ((void*)0))
   pmp->nextmonth = pm;
 }
 if (pmp == ((void*)0))
  py->months = pm;

 pdp = ((void*)0);
 pd = pm->days;
 while (pd != ((void*)0)) {
  pdp = pd;
  pd = pd->nextday;
 }

 if (pd == ((void*)0)) {
  pd = (struct cal_day *)calloc(1, sizeof(struct cal_day));
  pd->month = pm;
  pd->year = py;
  pd->dayofmonth = d;
  pd->julianday = pm->firstdayjulian + d - 1;
  pd->dayofweek = (pm->firstdayofweek + d - 1) % 7;
  if (pdp != ((void*)0))
   pdp->nextday = pd;
 }
 if (pdp == ((void*)0))
  pm->days = pd;
}
