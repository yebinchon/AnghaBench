
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*,char*,char*) ;
 char* invocname ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr,
     "usage: %s [-c | -m] vname [param=value ...]\n"
     "       %s -d vname\n"
     "       %s -l[rvj] [vname]\n"
     "       %s -i vname ifname [newifname]\n"
     "       %s vname [command ...]\n",
     invocname, invocname, invocname, invocname, invocname);
 exit(1);
}
