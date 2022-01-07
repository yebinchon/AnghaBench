
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_WARNING ;
 int LPD_ADDFROMLINE ;
 int LPD_LOGCONNERR ;
 int exit (int) ;
 int fflush (int ) ;
 char* from_host ;
 char* local_host ;
 int printf (char*,char*,char*,char*) ;
 char* progname ;
 int sleep (int) ;
 int stdout ;
 int syslog (int ,char*,char*) ;

__attribute__((used)) static void
fhosterr(int ch_opts, char *sysmsg, char *usermsg)
{
 if (ch_opts & LPD_LOGCONNERR) {
  if (ch_opts & LPD_ADDFROMLINE) {
      syslog(LOG_WARNING, "for connection from %s:", from_host);
  }
  syslog(LOG_WARNING, "%s", sysmsg);
 }





 printf("%s [@%s]: %s\n", progname, local_host, usermsg);
 fflush(stdout);







 sleep(2);
 exit(1);
}
