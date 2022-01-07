
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

void
usage(void)
{
 extern const char *__progname;

 fprintf(stderr, "usage: %s [-dnv] [-D macro=value] [-f file]\n",
     __progname);
 exit(1);
}
