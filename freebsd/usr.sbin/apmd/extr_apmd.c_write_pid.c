
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int apmd_pidfile ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,long) ;
 scalar_t__ getpid () ;

__attribute__((used)) static void
write_pid(void)
{
 FILE *fp = fopen(apmd_pidfile, "w");

 if (fp) {
  fprintf(fp, "%ld\n", (long)getpid());
  fclose(fp);
 }
}
