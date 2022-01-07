
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int tempname ;
struct stat {scalar_t__ st_mtime; } ;
typedef scalar_t__ off_t ;
typedef int FILE ;


 int EOF ;
 scalar_t__ Fclose (int *) ;
 int * Fdopen (int,char*) ;
 int * Fopen (char*,char*) ;
 int PATHSIZE ;
 char* _PATH_EX ;
 char* _PATH_VI ;
 int fchmod (int,int) ;
 scalar_t__ ferror (int *) ;
 int fflush (int *) ;
 int fileno (int *) ;
 scalar_t__ fstat (int ,struct stat*) ;
 int getc (int *) ;
 int mkstemp (char*) ;
 int putc (int,int *) ;
 int rm (char*) ;
 scalar_t__ run_command (char*,int ,int,int,char*,int *) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* tmpdir ;
 char* value (char*) ;
 int warn (char*,char*) ;
 int warnx (char*,char*) ;

FILE *
run_editor(FILE *fp, off_t size, int type, int readonly)
{
 FILE *nf = ((void*)0);
 int t;
 time_t modtime;
 char *edit, tempname[PATHSIZE];
 struct stat statb;

 (void)snprintf(tempname, sizeof(tempname),
     "%s/mail.ReXXXXXXXXXX", tmpdir);
 if ((t = mkstemp(tempname)) == -1 ||
     (nf = Fdopen(t, "w")) == ((void*)0)) {
  warn("%s", tempname);
  goto out;
 }
 if (readonly && fchmod(t, 0400) == -1) {
  warn("%s", tempname);
  (void)rm(tempname);
  goto out;
 }
 if (size >= 0)
  while (--size >= 0 && (t = getc(fp)) != EOF)
   (void)putc(t, nf);
 else
  while ((t = getc(fp)) != EOF)
   (void)putc(t, nf);
 (void)fflush(nf);
 if (fstat(fileno(nf), &statb) < 0)
  modtime = 0;
 else
  modtime = statb.st_mtime;
 if (ferror(nf)) {
  (void)Fclose(nf);
  warnx("%s", tempname);
  (void)rm(tempname);
  nf = ((void*)0);
  goto out;
 }
 if (Fclose(nf) < 0) {
  warn("%s", tempname);
  (void)rm(tempname);
  nf = ((void*)0);
  goto out;
 }
 nf = ((void*)0);
 if ((edit = value(type == 'e' ? "EDITOR" : "VISUAL")) == ((void*)0))
  edit = type == 'e' ? _PATH_EX : _PATH_VI;
 if (run_command(edit, 0, -1, -1, tempname, ((void*)0)) < 0) {
  (void)rm(tempname);
  goto out;
 }




 if (readonly) {
  (void)rm(tempname);
  goto out;
 }
 if (stat(tempname, &statb) < 0) {
  warn("%s", tempname);
  goto out;
 }
 if (modtime == statb.st_mtime) {
  (void)rm(tempname);
  goto out;
 }



 if ((nf = Fopen(tempname, "a+")) == ((void*)0)) {
  warn("%s", tempname);
  (void)rm(tempname);
  goto out;
 }
 (void)rm(tempname);
out:
 return (nf);
}
