
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TN ;


 int PTM_PARSE_ISO8601 ;
 int dbg_at_times ;
 int dbg_timenow ;
 int ptime_init (int *) ;
 int ptime_relparse (int ,int ,int ,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 int time (int *) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
parse_doption(const char *doption)
{
 const char TN[] = "TN=";
 int res;

 if (strncmp(doption, TN, sizeof(TN) - 1) == 0) {




  dbg_timenow = ptime_init(((void*)0));
  res = ptime_relparse(dbg_timenow, PTM_PARSE_ISO8601,
      time(((void*)0)), doption + sizeof(TN) - 1);
  if (res == -2) {
   warnx("Non-existent time specified on -D %s", doption);
   return (0);
  } else if (res < 0) {
   warnx("Malformed time given on -D %s", doption);
   return (0);
  }
  return (1);

 }

 if (strcmp(doption, "ats") == 0) {
  dbg_at_times++;
  return (1);
 }


 if ((strcmp(doption, "neworder") == 0) || (strcmp(doption, "oldorder")
     == 0)) {
  warnx("NOTE: newsyslog always uses 'neworder'.");
  return (1);
 }

 warnx("Unknown -D (debug) option: '%s'", doption);
 return (0);
}
