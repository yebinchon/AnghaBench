
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR_EXIT ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,...) ;
 int stderr ;

__attribute__((used)) static void
usage(char *msg)
{
 fprintf(stderr, "crontab: usage error: %s\n", msg);
 fprintf(stderr, "%s\n%s\n",
  "usage: crontab [-u user] file",
  "       crontab [-u user] { -l | -r [-f] | -e }");
 exit(ERROR_EXIT);
}
