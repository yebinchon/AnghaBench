
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void)fprintf(stderr,
"usage: mtree [-LPUcdeinqruxw] [-f spec] [-f spec] [-K key] [-k key] [-p path] [-s seed]\n"
"\t[-X excludes]\n");
 exit(1);
}
