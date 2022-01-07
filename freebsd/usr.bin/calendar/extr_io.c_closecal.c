
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_size; } ;
typedef int buf ;
struct TYPE_2__ {char* pw_name; } ;
typedef int FILE ;


 int STDIN_FILENO ;
 int _PATH_SENDMAIL ;
 int _exit (int) ;
 int close (int) ;
 char* dayname ;
 int doall ;
 int dup2 (int,int) ;
 int execl (int ,char*,char*,char*,char*,char*,char*) ;
 int fclose (int *) ;
 int fileno (int *) ;
 int fork () ;
 scalar_t__ fstat (int ,struct stat*) ;
 int path ;
 scalar_t__ pipe (int*) ;
 TYPE_1__* pw ;
 int read (int ,char*,int) ;
 int rewind (int *) ;
 int strlen (char*) ;
 int unlink (int ) ;
 scalar_t__ wait (int*) ;
 int warn (int ) ;
 int write (int,char*,int) ;

void
closecal(FILE *fp)
{
 struct stat sbuf;
 int nread, pdes[2], status;
 char buf[1024];

 if (!doall)
  return;

 rewind(fp);
 if (fstat(fileno(fp), &sbuf) || !sbuf.st_size)
  goto done;
 if (pipe(pdes) < 0)
  goto done;
 switch (fork()) {
 case -1:
  (void)close(pdes[0]);
  (void)close(pdes[1]);
  goto done;
 case 0:

  if (pdes[0] != STDIN_FILENO) {
   (void)dup2(pdes[0], STDIN_FILENO);
   (void)close(pdes[0]);
  }
  (void)close(pdes[1]);
  execl(_PATH_SENDMAIL, "sendmail", "-i", "-t", "-F",
      "\"Reminder Service\"", (char *)((void*)0));
  warn(_PATH_SENDMAIL);
  _exit(1);
 }

 (void)close(pdes[0]);

 write(pdes[1], "From: \"Reminder Service\" <", 26);
 write(pdes[1], pw->pw_name, strlen(pw->pw_name));
 write(pdes[1], ">\nTo: <", 7);
 write(pdes[1], pw->pw_name, strlen(pw->pw_name));
 write(pdes[1], ">\nSubject: ", 11);
 write(pdes[1], dayname, strlen(dayname));
 write(pdes[1], "'s Calendar\nPrecedence: bulk\n\n", 30);

 while ((nread = read(fileno(fp), buf, sizeof(buf))) > 0)
  (void)write(pdes[1], buf, nread);
 (void)close(pdes[1]);
done: (void)fclose(fp);
 (void)unlink(path);
 while (wait(&status) >= 0);
}
