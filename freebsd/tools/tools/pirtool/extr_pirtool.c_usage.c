
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 char* progname ;
 int stderr ;

void
usage(void)
{

 fprintf(stderr, "usage: %s [-h]\r\n", progname);
 fprintf(stderr, "-h\tdisplay this message\r\n", progname);
 exit(EXIT_FAILURE);
}
