
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef scalar_t__ time_t ;
struct stat {scalar_t__ st_mtime; } ;
struct printer {int printer; } ;


 int LOG_INFO ;
 int LOG_WARNING ;
 scalar_t__ MAXWAIT_4DATA ;
 scalar_t__ MAXWAIT_ARRIVE ;
 scalar_t__ MINWAIT_4DATA ;
 char const* local_host ;
 int pstatus (struct printer*,char*) ;
 scalar_t__ sleep (scalar_t__) ;
 int stat (char const*,struct stat*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;
 int syslog (int ,char*,int ,...) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void
wait4data(struct printer *pp, const char *dfile)
{
 const char *cp;
 int statres;
 u_int sleepreq;
 size_t dlen, hlen;
 time_t amtslept, cur_time, prev_mtime;
 struct stat statdf;


 dlen = strlen(dfile);
 hlen = strlen(local_host);
 if (dlen > hlen) {
  cp = dfile + dlen - hlen;
  if (strcmp(cp, local_host) == 0)
   return;
 }





 amtslept = 0;
 statres = stat(dfile, &statdf);
 while (statres < 0 && amtslept < MAXWAIT_ARRIVE) {
  if (amtslept == 0)
   pstatus(pp, "Waiting for data file from remote host");
  amtslept += MINWAIT_4DATA - sleep(MINWAIT_4DATA);
  statres = stat(dfile, &statdf);
 }
 if (statres < 0) {

  syslog(LOG_WARNING, "%s: wait4data() abandoned wait for %s",
      pp->printer, dfile);
  return;
 }
 prev_mtime = statdf.st_mtime;
 cur_time = time(((void*)0));
 if (statdf.st_mtime >= cur_time - MINWAIT_4DATA) {
  if (statdf.st_mtime >= cur_time)
   sleepreq = MINWAIT_4DATA;
  else
   sleepreq = cur_time - statdf.st_mtime;
  if (amtslept == 0)
   pstatus(pp, "Waiting for data file from remote host");
  amtslept += sleepreq - sleep(sleepreq);
  statres = stat(dfile, &statdf);
 }
 sleepreq = MINWAIT_4DATA;
 while (statres == 0 && amtslept < MAXWAIT_4DATA) {
  if (statdf.st_mtime == prev_mtime)
   break;
  prev_mtime = statdf.st_mtime;
  amtslept += sleepreq - sleep(sleepreq);
  statres = stat(dfile, &statdf);
 }

 if (statres != 0)
  syslog(LOG_WARNING, "%s: %s disappeared during wait4data()",
      pp->printer, dfile);
 else if (amtslept > MAXWAIT_4DATA)
  syslog(LOG_WARNING,
      "%s: %s still changing after %lu secs in wait4data()",
      pp->printer, dfile, (unsigned long)amtslept);





}
