
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 scalar_t__ ischown ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 if (ischown)
  (void)fprintf(stderr, "%s\n%s\n",
      "usage: chown [-fhvx] [-R [-H | -L | -P]] owner[:group]"
      " file ...",
      "       chown [-fhvx] [-R [-H | -L | -P]] :group file ...");
 else
  (void)fprintf(stderr, "%s\n",
      "usage: chgrp [-fhvx] [-R [-H | -L | -P]] group file ...");
 exit(1);
}
