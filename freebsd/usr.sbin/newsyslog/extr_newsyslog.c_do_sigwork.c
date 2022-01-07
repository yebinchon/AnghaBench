
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigwork_entry {scalar_t__ sw_runcmd; int sw_pidok; scalar_t__ sw_pid; char* sw_fname; int sw_signum; char* sw_pidtype; } ;


 scalar_t__ ESRCH ;
 struct sigwork_entry* SLIST_NEXT (struct sigwork_entry*,int ) ;
 int asprintf (char**,char*,char*,int) ;
 scalar_t__ errno ;
 int free (char*) ;
 int kill (scalar_t__,int) ;
 scalar_t__ noaction ;
 scalar_t__ nosignal ;
 int printf (char*,...) ;
 int rotatereq ;
 int sleep (int) ;
 int sw_nextp ;
 int system (char*) ;
 scalar_t__ verbose ;
 int warn (char*,char*,...) ;
 int warnx (char*,char*,int) ;

__attribute__((used)) static void
do_sigwork(struct sigwork_entry *swork)
{
 struct sigwork_entry *nextsig;
 int kres, secs;
 char *tmp;

 if (swork->sw_runcmd == 0 && (!(swork->sw_pidok) || swork->sw_pid == 0))
  return;
 if (nosignal) {
  if (!rotatereq)
   swork->sw_pidok = -1;
  return;
 }






 secs = 0;
 nextsig = SLIST_NEXT(swork, sw_nextp);
 if (nextsig != ((void*)0)) {
  if (swork->sw_pid == nextsig->sw_pid)
   secs = 10;
  else
   secs = 1;
 }

 if (noaction) {
  if (swork->sw_runcmd)
   printf("\tsh -c '%s %d'\n", swork->sw_fname,
       swork->sw_signum);
  else {
   printf("\tkill -%d %d \t\t# %s\n", swork->sw_signum,
       (int)swork->sw_pid, swork->sw_fname);
   if (secs > 0)
    printf("\tsleep %d\n", secs);
  }
  return;
 }

 if (swork->sw_runcmd) {
  asprintf(&tmp, "%s %d", swork->sw_fname, swork->sw_signum);
  if (tmp == ((void*)0)) {
   warn("can't allocate memory to run %s",
       swork->sw_fname);
   return;
  }
  if (verbose)
   printf("Run command: %s\n", tmp);
  kres = system(tmp);
  if (kres) {
   warnx("%s: returned non-zero exit code: %d",
       tmp, kres);
  }
  free(tmp);
  return;
 }

 kres = kill(swork->sw_pid, swork->sw_signum);
 if (kres != 0) {







  if (errno != ESRCH)
   swork->sw_pidok = 0;
  warn("can't notify %s, pid %d = %s", swork->sw_pidtype,
      (int)swork->sw_pid, swork->sw_fname);
 } else {
  if (verbose)
   printf("Notified %s pid %d = %s\n", swork->sw_pidtype,
       (int)swork->sw_pid, swork->sw_fname);
  if (secs > 0) {
   if (verbose)
    printf("Pause %d second(s) between signals\n",
        secs);
   sleep(secs);
  }
 }
}
