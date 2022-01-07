
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char const*) ;
 char* getprogname () ;
 int stderr ;

void
usage(const char *synopsis)
{

 (void)fprintf(stderr, "usage: %s %s\n", getprogname(), synopsis);
 exit(1);
}
