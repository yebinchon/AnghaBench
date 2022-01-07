
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int FILE ;


 int EOF ;
 int Fclose (int *) ;
 int * Fopen (char*,char*) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ ferror (int *) ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int getc (int *) ;
 int printf (char*,...) ;
 int putc (int,int *) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stderr ;
 int stdout ;
 int warn (char*) ;
 int warnx (char*,char*) ;

int
exwrite(char name[], FILE *fp, int f)
{
 FILE *of;
 int c, lc;
 long cc;
 struct stat junk;

 if (f) {
  printf("\"%s\" ", name);
  (void)fflush(stdout);
 }
 if (stat(name, &junk) >= 0 && S_ISREG(junk.st_mode)) {
  if (!f)
   fprintf(stderr, "%s: ", name);
  fprintf(stderr, "File exists\n");
  return (-1);
 }
 if ((of = Fopen(name, "w")) == ((void*)0)) {
  warn((char *)((void*)0));
  return (-1);
 }
 lc = 0;
 cc = 0;
 while ((c = getc(fp)) != EOF) {
  cc++;
  if (c == '\n')
   lc++;
  (void)putc(c, of);
  if (ferror(of)) {
   warnx("%s", name);
   (void)Fclose(of);
   return (-1);
  }
 }
 (void)Fclose(of);
 printf("%d/%ld\n", lc, cc);
 (void)fflush(stdout);
 return (0);
}
