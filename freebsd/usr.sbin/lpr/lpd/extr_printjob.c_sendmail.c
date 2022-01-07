
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct printer {char* printer; } ;
typedef int FILE ;



 int DORETURN ;
 int EOF ;


 int LOG_INFO ;
 int LOG_WARNING ;


 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 char* _PATH_SENDMAIL ;
 int _exit (int ) ;
 int close (int) ;
 int closeallfds (int) ;
 int closelog () ;
 int dofork (struct printer*,int ) ;
 int dup2 (int,int) ;
 int execl (char*,char const*,char*,char*) ;
 int fclose (int *) ;
 int fflush (int ) ;
 int * fopen (int ,char*) ;
 int getc (int *) ;
 char* jobname ;
 char* local_host ;
 char* origin_host ;
 int pipe (int*) ;
 int printf (char*,...) ;
 int putchar (int) ;
 int stat (int ,struct stat*) ;
 int stdout ;
 char* strrchr (char*,char) ;
 int syslog (int ,char*,char*,...) ;
 int tempstderr ;
 int wait (int *) ;

__attribute__((used)) static void
sendmail(struct printer *pp, char *userid, int bombed)
{
 register int i;
 int p[2], s;
 register const char *cp;
 struct stat stb;
 FILE *fp;

 pipe(p);
 if ((s = dofork(pp, DORETURN)) == 0) {
  dup2(p[0], STDIN_FILENO);
  closelog();
  closeallfds(3);
  if ((cp = strrchr(_PATH_SENDMAIL, '/')) != ((void*)0))
   cp++;
  else
   cp = _PATH_SENDMAIL;
  execl(_PATH_SENDMAIL, cp, "-t", (char *)0);
  _exit(0);
 } else if (s > 0) {
  dup2(p[1], STDOUT_FILENO);
  printf("To: %s@%s\n", userid, origin_host);
  printf("Subject: %s printer job \"%s\"\n", pp->printer,
   *jobname ? jobname : "<unknown>");
  printf("Reply-To: root@%s\n\n", local_host);
  printf("Your printer job ");
  if (*jobname)
   printf("(%s) ", jobname);

  switch (bombed) {
  case 128:
   cp = "OK";
   printf("\ncompleted successfully\n");
   break;
  default:
  case 131:
   cp = "FATALERR";
   printf("\ncould not be printed\n");
   break;
  case 129:
   cp = "NOACCT";
   printf("\ncould not be printed without an account on %s\n",
       local_host);
   break;
  case 130:
   cp = "FILTERERR";
   if (stat(tempstderr, &stb) < 0 || stb.st_size == 0
       || (fp = fopen(tempstderr, "r")) == ((void*)0)) {
    printf("\nhad some errors and may not have printed\n");
    break;
   }
   printf("\nhad the following errors and may not have printed:\n");
   while ((i = getc(fp)) != EOF)
    putchar(i);
   (void) fclose(fp);
   break;
  case 132:
   cp = "ACCESS";
   printf("\nwas not printed because it was not linked to the original file\n");
  }
  fflush(stdout);
  (void) close(STDOUT_FILENO);
 } else {
  syslog(LOG_WARNING, "unable to send mail to %s: %m", userid);
  return;
 }
 (void) close(p[0]);
 (void) close(p[1]);
 wait(((void*)0));
 syslog(LOG_INFO, "mail sent to user %s about job %s on printer %s (%s)",
     userid, *jobname ? jobname : "<unknown>", pp->printer, cp);
}
