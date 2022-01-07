
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 char* getprogname () ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr, "Usage: %s [--signal sig | -s sig] [--preserve-status]"
     " [--kill-after time | -k time] [--foreground] <duration> <command>"
     " <arg ...>\n", getprogname());

 exit(EX_USAGE);
}
