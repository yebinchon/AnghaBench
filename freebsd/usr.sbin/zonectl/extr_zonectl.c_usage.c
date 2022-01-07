
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void
usage(int error)
{
 fprintf(error ? stderr : stdout,
"usage: zonectl <-d dev> <-c cmd> [-a][-o rep_opts] [-l lba][-P print_opts]\n"
 );
}
