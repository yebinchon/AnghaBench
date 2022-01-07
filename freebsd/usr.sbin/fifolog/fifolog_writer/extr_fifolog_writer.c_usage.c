
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr,
     "Usage: fifolog_writer [-w write-rate] [-s sync-rate] "
     "[-z compression] file\n");
 exit(EX_USAGE);
}
