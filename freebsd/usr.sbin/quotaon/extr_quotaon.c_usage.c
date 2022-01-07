
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr, "%s\n%s\n%s\n%s\n",
  "usage: quotaon [-g] [-u] [-v] -a",
  "       quotaon [-g] [-u] [-v] filesystem ...",
  "       quotaoff [-g] [-u] [-v] -a",
  "       quotaoff [-g] [-u] [-v] filesystem ...");
 exit(1);
}
