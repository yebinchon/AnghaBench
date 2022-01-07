
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
show_usage()
{
 fprintf(stderr, "usage: rrenumd [-c conf_file|-s] [-df"







  "]\n");
 exit(1);
}
