
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** DebugFlagNames ;
 int ERROR_EXIT ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
usage() {




 fprintf(stderr, "usage: cron [-j jitter] [-J rootjitter] "
   "[-m mailto] [-n] [-s] [-o] [-x debugflag[,...]]\n");
 exit(ERROR_EXIT);
}
