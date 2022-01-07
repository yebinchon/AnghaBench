
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(char *progname)
{

 fprintf(stderr, "Usage: %s [-p] [-d yyyy.mm.dd] [-t hh:mm:ss]\n",
     progname);
 exit(EX_USAGE);
}
