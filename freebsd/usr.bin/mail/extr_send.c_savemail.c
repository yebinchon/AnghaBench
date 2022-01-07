
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int mode_t ;
typedef int buf ;
typedef int FILE ;


 int BUFSIZ ;
 int Fclose (int *) ;
 int * Fopen (char*,char*) ;
 char* ctime (int *) ;
 scalar_t__ ferror (int *) ;
 int fflush (int *) ;
 int fprintf (int *,char*,...) ;
 int fread (char*,int,int,int *) ;
 int fwrite (char*,int,int,int *) ;
 char* myname ;
 int rewind (int *) ;
 int time (int *) ;
 int umask (int) ;
 int warn (char*,char*) ;

int
savemail(char name[], FILE *fi)
{
 FILE *fo;
 char buf[BUFSIZ];
 int i;
 time_t now;
 mode_t saved_umask;

 saved_umask = umask(077);
 fo = Fopen(name, "a");
 umask(saved_umask);

 if (fo == ((void*)0)) {
  warn("%s", name);
  return (-1);
 }
 (void)time(&now);
 fprintf(fo, "From %s %s", myname, ctime(&now));
 while ((i = fread(buf, 1, sizeof(buf), fi)) > 0)
  (void)fwrite(buf, 1, i, fo);
 fprintf(fo, "\n");
 (void)fflush(fo);
 if (ferror(fo))
  warn("%s", name);
 (void)Fclose(fo);
 rewind(fi);
 return (0);
}
