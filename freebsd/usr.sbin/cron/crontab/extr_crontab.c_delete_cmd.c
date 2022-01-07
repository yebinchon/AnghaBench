
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int n ;


 char* CRON_TAB (char*) ;
 scalar_t__ ENOENT ;
 int EOF ;
 int ERROR_EXIT ;
 int MAX_FNAME ;
 int Pid ;
 int RealUser ;
 int STDIN_FILENO ;
 char* User ;
 int err (int ,char*,char*) ;
 scalar_t__ errno ;
 int errx (int ,char*,char*) ;
 int fflag ;
 int fprintf (int ,char*,char*) ;
 int getchar () ;
 scalar_t__ isatty (int ) ;
 int log_it (int ,int ,char*,char*) ;
 int poke_daemon () ;
 int snprintf (char*,int,char*) ;
 int stderr ;
 scalar_t__ unlink (char*) ;

__attribute__((used)) static void
delete_cmd() {
 char n[MAX_FNAME];
 int ch, first;

 if (!fflag && isatty(STDIN_FILENO)) {
  (void)fprintf(stderr, "remove crontab for %s? ", User);
  first = ch = getchar();
  while (ch != '\n' && ch != EOF)
   ch = getchar();
  if (first != 'y' && first != 'Y')
   return;
 }

 log_it(RealUser, Pid, "DELETE", User);
 (void) snprintf(n, sizeof(n), CRON_TAB(User));
 if (unlink(n)) {
  if (errno == ENOENT)
   errx(ERROR_EXIT, "no crontab for %s", User);
  else
   err(ERROR_EXIT, "%s", n);
 }
 poke_daemon();
}
