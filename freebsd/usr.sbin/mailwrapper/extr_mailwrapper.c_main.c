
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* u_long ;
struct arglist {int argv; } ;
typedef int FILE ;


 int EX_CONFIG ;
 int EX_OSERR ;
 int LOG_INFO ;
 int LOG_MAIL ;
 int LOG_PID ;
 int MAXPATHLEN ;
 int WS ;
 char* _PATH_DEFAULTMTA ;
 char* _PATH_MAILERCONF ;
 int addarg (struct arglist*,char*) ;
 int closelog () ;
 int err (int ,char*,char*) ;
 int errx (int ,char*,char const*,...) ;
 int execve (char*,int ,char**) ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 int * fopen (char const*,char*) ;
 char* fparseln (int *,size_t*,size_t*,int *,int ) ;
 int free (char*) ;
 char* getenv (char*) ;
 char* getprogname () ;
 int initarg (struct arglist*) ;
 int openlog (char*,int ,int ) ;
 int setprogname (char*) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strcmp (char*,char const*) ;
 char* strsep (char**,int ) ;
 int strspn (char*,int ) ;
 int syslog (int ,char*,char const*,char*) ;

int
main(int argc, char *argv[], char *envp[])
{
 FILE *config;
 char *line, *cp, *from, *to, *ap;
 const char *progname;
 char localmailerconf[MAXPATHLEN];
 const char *mailerconf;
 size_t len, lineno = 0;
 int i;
 struct arglist al;


 progname = getprogname();
 setprogname("mailwrapper");

 initarg(&al);
 addarg(&al, argv[0]);

 snprintf(localmailerconf, MAXPATHLEN, "%s/etc/mail/mailer.conf",
     getenv("LOCALBASE") ? getenv("LOCALBASE") : "/usr/local");

 mailerconf = localmailerconf;
 if ((config = fopen(localmailerconf, "r")) == ((void*)0))
  mailerconf = _PATH_MAILERCONF;

 if (config == ((void*)0) && ((config = fopen(mailerconf, "r")) == ((void*)0))) {
  addarg(&al, ((void*)0));
  openlog(getprogname(), LOG_PID, LOG_MAIL);
  syslog(LOG_INFO, "cannot open %s, using %s as default MTA",
      mailerconf, _PATH_DEFAULTMTA);
  closelog();
  execve(_PATH_DEFAULTMTA, al.argv, envp);
  err(EX_OSERR, "cannot exec %s", _PATH_DEFAULTMTA);

 }

 for (;;) {
  if ((line = fparseln(config, &len, &lineno, ((void*)0), 0)) == ((void*)0)) {
   if (feof(config))
    errx(EX_CONFIG, "no mapping in %s", mailerconf);
   err(EX_CONFIG, "cannot parse line %lu", (u_long)lineno);
  }


  cp = line;

  cp += strspn(cp, " \t\n");
  if (cp[0] == '\0') {

   free(line);
   continue;
  }

  if ((from = strsep(&cp, " \t\n")) == ((void*)0) || cp == ((void*)0))
   goto parse_error;

  cp += strspn(cp, " \t\n");

  if ((to = strsep(&cp, " \t\n")) == ((void*)0))
   goto parse_error;

  if (strcmp(from, progname) == 0) {
   for (ap = strsep(&cp, " \t\n"); ap != ((void*)0);
        ap = strsep(&cp, " \t\n")) {
    if (*ap)
        addarg(&al, ap);
   }
   break;
  }

  free(line);
 }

 (void)fclose(config);

 for (i = 1; i < argc; i++)
  addarg(&al, argv[i]);

 addarg(&al, ((void*)0));
 execve(to, al.argv, envp);
 err(EX_OSERR, "cannot exec %s", to);

parse_error:
 errx(EX_CONFIG, "parse error in %s at line %lu",
     mailerconf, (u_long)lineno);

}
