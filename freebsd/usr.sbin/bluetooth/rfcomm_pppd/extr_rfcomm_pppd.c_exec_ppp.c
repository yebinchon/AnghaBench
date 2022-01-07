
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int O_RDWR ;
 int close (int) ;
 scalar_t__ dup (int) ;
 int errno ;
 scalar_t__ execv (char*,char**) ;
 int exit (int) ;
 int open (char*,int ) ;
 int strerror (int ) ;
 int syslog (int ,char*,char*,char*,...) ;

__attribute__((used)) static void
exec_ppp(int s, char *unit, char *label)
{
 char ppp[] = "/usr/sbin/ppp";
 char *ppp_args[] = { ppp, "-direct", "-quiet",
    ((void*)0), ((void*)0), ((void*)0), ((void*)0) };

 close(0);
 if (dup(s) < 0) {
  syslog(LOG_ERR, "Could not dup(0). %s (%d)",
   strerror(errno), errno);
  exit(1);
 }

 close(1);
 if (dup(s) < 0) {
  syslog(LOG_ERR, "Could not dup(1). %s (%d)",
   strerror(errno), errno);
  exit(1);
 }

 close(2);
 open("/dev/null", O_RDWR);

 if (unit != ((void*)0)) {
  ppp_args[3] = "-unit";
  ppp_args[4] = unit;
  ppp_args[5] = label;
 } else
  ppp_args[3] = label;

 if (execv(ppp, ppp_args) < 0) {
  syslog(LOG_ERR, "Could not exec(%s -direct -quiet%s%s %s). " "%s (%d)", ppp, (unit != ((void*)0))? " -unit " : "",

   (unit != ((void*)0))? unit : "", label,
   strerror(errno), errno);
  exit(1);
 }
}
