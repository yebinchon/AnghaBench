
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINESIZE ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTSTP ;
 int SIGTTIN ;
 int SIGTTOU ;
 scalar_t__ SIG_IGN ;
 scalar_t__ execute (char*,int ) ;
 int fflush (int ) ;
 scalar_t__ hangup ;
 scalar_t__ incfile () ;
 int input ;
 scalar_t__ intr ;
 scalar_t__ loading ;
 int printf (char*,...) ;
 char* prompt ;
 scalar_t__ readline (int ,char*,int) ;
 int reset_on_stop ;
 int setexit () ;
 scalar_t__ signal (int ,scalar_t__) ;
 scalar_t__ sourcing ;
 int sreset () ;
 int stdout ;
 scalar_t__ stop ;
 int strlen (char*) ;
 int unstack () ;
 int * value (char*) ;

void
commands(void)
{
 int n, eofloop = 0;
 char linebuf[LINESIZE];

 if (!sourcing) {
  if (signal(SIGINT, SIG_IGN) != SIG_IGN)
   (void)signal(SIGINT, intr);
  if (signal(SIGHUP, SIG_IGN) != SIG_IGN)
   (void)signal(SIGHUP, hangup);
  (void)signal(SIGTSTP, stop);
  (void)signal(SIGTTOU, stop);
  (void)signal(SIGTTIN, stop);
 }
 setexit();
 for (;;) {




  if (!sourcing && value("interactive") != ((void*)0)) {
   if ((value("autoinc") != ((void*)0)) && (incfile() > 0))
    printf("New mail has arrived.\n");
   reset_on_stop = 1;
   printf("%s", prompt);
  }
  (void)fflush(stdout);
  sreset();




  n = 0;
  for (;;) {
   if (readline(input, &linebuf[n], LINESIZE - n) < 0) {
    if (n == 0)
     n = -1;
    break;
   }
   if ((n = strlen(linebuf)) == 0)
    break;
   n--;
   if (linebuf[n] != '\\')
    break;
   linebuf[n++] = ' ';
  }
  reset_on_stop = 0;
  if (n < 0) {

   if (loading)
    break;
   if (sourcing) {
    unstack();
    continue;
   }
   if (value("interactive") != ((void*)0) &&
       value("ignoreeof") != ((void*)0) &&
       ++eofloop < 25) {
    printf("Use \"quit\" to quit.\n");
    continue;
   }
   break;
  }
  eofloop = 0;
  if (execute(linebuf, 0))
   break;
 }
}
