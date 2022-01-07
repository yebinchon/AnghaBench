
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 int fprintf (int *,char*,int ) ;
 int getprogname () ;
 char* getstr (int) ;
 int * stderr ;
 int * stdout ;

__attribute__((used)) static void
usage(bool opt_err)
{
 FILE *out;

 out = opt_err ? stderr : stdout;

 fprintf(out, getstr(12), getprogname());
 if (opt_err)
  exit(2);
 exit(0);
}
