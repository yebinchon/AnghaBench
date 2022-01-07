
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int n ;
typedef int FILE ;


 char* CRON_TAB (int ) ;
 scalar_t__ ENOENT ;
 int ERROR_EXIT ;
 int MAX_FNAME ;
 int Pid ;
 int RealUser ;
 int User ;
 int copy_file (int *,int ) ;
 int err (int ,char*,char*) ;
 scalar_t__ errno ;
 int errx (int ,char*,int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int log_it (int ,int ,char*,int ) ;
 int snprintf (char*,int,char*) ;
 int stdout ;

__attribute__((used)) static void
list_cmd() {
 char n[MAX_FNAME];
 FILE *f;

 log_it(RealUser, Pid, "LIST", User);
 (void) snprintf(n, sizeof(n), CRON_TAB(User));
 if (!(f = fopen(n, "r"))) {
  if (errno == ENOENT)
   errx(ERROR_EXIT, "no crontab for %s", User);
  else
   err(ERROR_EXIT, "%s", n);
 }



 copy_file(f, stdout);
 fclose(f);
}
