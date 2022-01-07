
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* getprogname () ;
 int stdout ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stdout, "usage: %s [-v] param[:len][=value] ...\n",
     getprogname());
 exit(1);
}
