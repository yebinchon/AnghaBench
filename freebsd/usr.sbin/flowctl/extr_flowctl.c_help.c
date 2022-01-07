
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
help(void)
{
 extern char *__progname;

 fprintf(stderr, "usage: %s [-d level] nodename command\n", __progname);
 exit (0);
}
