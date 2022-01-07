
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tempname ;
struct header {int dummy; } ;
typedef int FILE ;


 int EOF ;
 int Fclose (int *) ;
 int * Fdopen (int,char*) ;
 int * Fopen (char*,char*) ;
 int GBCC ;
 int GCC ;
 int GCOMMA ;
 int GINREPLYTO ;
 int GNL ;
 int GREPLYTO ;
 int GSUBJECT ;
 int GTO ;
 int PATHSIZE ;
 scalar_t__ ferror (int *) ;
 int fflush (int *) ;
 int getc (int *) ;
 int mkstemp (char*) ;
 int putc (int,int *) ;
 int puthead (struct header*,int *,int) ;
 int rewind (int *) ;
 int rm (char*) ;
 int snprintf (char*,int,char*,char*) ;
 char* tmpdir ;
 int warn (char*,char*) ;
 int warnx (char*) ;

FILE *
infix(struct header *hp, FILE *fi)
{
 FILE *nfo, *nfi;
 int c, fd;
 char tempname[PATHSIZE];

 (void)snprintf(tempname, sizeof(tempname),
     "%s/mail.RsXXXXXXXXXX", tmpdir);
 if ((fd = mkstemp(tempname)) == -1 ||
     (nfo = Fdopen(fd, "w")) == ((void*)0)) {
  warn("%s", tempname);
  return (fi);
 }
 if ((nfi = Fopen(tempname, "r")) == ((void*)0)) {
  warn("%s", tempname);
  (void)Fclose(nfo);
  (void)rm(tempname);
  return (fi);
 }
 (void)rm(tempname);
 (void)puthead(hp, nfo,
     GTO|GSUBJECT|GCC|GBCC|GREPLYTO|GINREPLYTO|GNL|GCOMMA);
 c = getc(fi);
 while (c != EOF) {
  (void)putc(c, nfo);
  c = getc(fi);
 }
 if (ferror(fi)) {
  warnx("read");
  rewind(fi);
  return (fi);
 }
 (void)fflush(nfo);
 if (ferror(nfo)) {
  warn("%s", tempname);
  (void)Fclose(nfo);
  (void)Fclose(nfi);
  rewind(fi);
  return (fi);
 }
 (void)Fclose(nfo);
 (void)Fclose(fi);
 rewind(nfi);
 return (nfi);
}
