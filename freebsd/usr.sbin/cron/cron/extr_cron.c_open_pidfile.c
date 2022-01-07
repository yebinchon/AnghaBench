
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pidfile ;
typedef int buf ;


 scalar_t__ EEXIST ;
 int ERROR_EXIT ;
 int MAX_FNAME ;
 int MAX_TEMPSTR ;
 int PIDDIR ;
 char* PIDFILE ;
 scalar_t__ errno ;
 int errx (int ,char*,char*) ;
 int getpid () ;
 int log_it (char*,int ,char*,char*) ;
 int * pfh ;
 int * pidfile_open (char*,int,int*) ;
 int snprintf (char*,int,char*,...) ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static void
open_pidfile(void)
{
 char pidfile[MAX_FNAME];
 char buf[MAX_TEMPSTR];
 int otherpid;

 (void) snprintf(pidfile, sizeof(pidfile), PIDFILE, PIDDIR);
 pfh = pidfile_open(pidfile, 0600, &otherpid);
 if (pfh == ((void*)0)) {
  if (errno == EEXIST) {
   snprintf(buf, sizeof(buf),
       "cron already running, pid: %d", otherpid);
  } else {
   snprintf(buf, sizeof(buf),
       "can't open or create %s: %s", pidfile,
       strerror(errno));
  }
  log_it("CRON", getpid(), "DEATH", buf);
  errx(ERROR_EXIT, "%s", buf);
 }
}
