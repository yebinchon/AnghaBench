
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tempname ;
typedef int sig_t ;
typedef int off_t ;
typedef int FILE ;


 int Fclose (int *) ;
 int * Fdopen (int,char*) ;
 int PATHSIZE ;
 int SEEK_END ;
 int SIGINT ;
 int SIG_IGN ;
 char* _PATH_CSHELL ;
 int * collf ;
 int fileno (int *) ;
 int fprintf (int ,char*,char*) ;
 int fseeko (int *,int ,int ) ;
 scalar_t__ fsize (int *) ;
 int mkstemp (char*) ;
 int rm (char*) ;
 scalar_t__ run_command (char*,int ,int ,int ,char*,char*,int *) ;
 int signal (int ,int ) ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 char* tmpdir ;
 char* value (char*) ;
 int warn (char*,char*) ;

void
mespipe(FILE *fp, char cmd[])
{
 FILE *nf;
 int fd;
 sig_t sigint = signal(SIGINT, SIG_IGN);
 char *sh, tempname[PATHSIZE];

 (void)snprintf(tempname, sizeof(tempname),
     "%s/mail.ReXXXXXXXXXX", tmpdir);
 if ((fd = mkstemp(tempname)) == -1 ||
     (nf = Fdopen(fd, "w+")) == ((void*)0)) {
  warn("%s", tempname);
  goto out;
 }
 (void)rm(tempname);




 if ((sh = value("SHELL")) == ((void*)0))
  sh = _PATH_CSHELL;
 if (run_command(sh,
     0, fileno(fp), fileno(nf), "-c", cmd, ((void*)0)) < 0) {
  (void)Fclose(nf);
  goto out;
 }
 if (fsize(nf) == 0) {
  fprintf(stderr, "No bytes from \"%s\" !?\n", cmd);
  (void)Fclose(nf);
  goto out;
 }



 (void)fseeko(nf, (off_t)0, SEEK_END);
 collf = nf;
 (void)Fclose(fp);
out:
 (void)signal(SIGINT, sigint);
}
