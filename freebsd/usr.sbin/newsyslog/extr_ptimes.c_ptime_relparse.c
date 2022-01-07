
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; int tm_mon; int tm_year; int tm_mday; } ;
struct ptime_data {int parseopts; scalar_t__ tsecs; int tmspec; struct tm tm; struct tm basetm; scalar_t__ basesecs; } ;


 int PTM_PARSE_DWM ;
 int PTM_PARSE_MATCHDOM ;
 int TSPEC_DAYOFMONTH ;
 int days_pmonth (int,int) ;
 int dbg_at_times ;
 int fprintf (int ,char*,int,int,int,int,int,...) ;
 struct tm* localtime (scalar_t__*) ;
 void* mktime (struct tm*) ;
 int parse8601 (struct ptime_data*,char const*) ;
 int parseDWM (struct ptime_data*,char const*) ;
 int ptimeset_nxtime (struct ptime_data*) ;
 int stderr ;
 scalar_t__ verbose ;

int
ptime_relparse(struct ptime_data *ptime, int parseopts, time_t basetime,
    const char *str)
{
 int dpm, pres;
 struct tm temp_tm;

 ptime->parseopts = parseopts;
 ptime->basesecs = basetime;
 ptime->basetm = *(localtime(&ptime->basesecs));
 ptime->tm = ptime->basetm;
 ptime->tm.tm_hour = ptime->tm.tm_min = ptime->tm.tm_sec = 0;






 if (parseopts & PTM_PARSE_DWM)
  pres = parseDWM(ptime, str);
 else
  pres = parse8601(ptime, str);
 if (pres < 0) {
  ptime->tsecs = (time_t)pres;
  return (pres);
 }
 dpm = days_pmonth(ptime->tm.tm_mon, ptime->tm.tm_year);
 if ((parseopts & PTM_PARSE_MATCHDOM) &&
     (ptime->tmspec & TSPEC_DAYOFMONTH) &&
     (ptime->tm.tm_mday> dpm)) {





  if (verbose && dbg_at_times > 1)
   fprintf(stderr,
       "\t-- dom fixed: %4d/%02d/%02d %02d:%02d (%02d)",
       ptime->tm.tm_year, ptime->tm.tm_mon,
       ptime->tm.tm_mday, ptime->tm.tm_hour,
       ptime->tm.tm_min, dpm);
  temp_tm = ptime->tm;
  ptime->tsecs = mktime(&temp_tm);
  if (ptime->tsecs > (time_t)-1)
   ptimeset_nxtime(ptime);
  if (verbose && dbg_at_times > 1)
   fprintf(stderr,
       " to: %4d/%02d/%02d %02d:%02d\n",
       ptime->tm.tm_year, ptime->tm.tm_mon,
       ptime->tm.tm_mday, ptime->tm.tm_hour,
       ptime->tm.tm_min);
 }






 ptime->tsecs = mktime(&ptime->tm);
 if (ptime->tsecs == (time_t)-1) {
  ptime->tsecs = (time_t)-2;
  return (-2);
 }

 return (0);
}
