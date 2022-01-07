
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

void
__utrap_panic(const char *msg)
{

 fprintf(stderr, "panic: %s\n", msg);
 exit(1);
}
