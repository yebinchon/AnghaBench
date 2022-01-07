
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

 fprintf(stderr,
     "usage: cpuset [-l cpu-list] [-s setid] cmd ...\n");
 fprintf(stderr,
     "       cpuset [-l cpu-list] [-s setid] -p pid\n");
 fprintf(stderr,
     "       cpuset [-c] [-l cpu-list] -C -p pid\n");
 fprintf(stderr,
     "       cpuset [-c] [-l cpu-list] [-j jailid | -p pid | -t tid | -s setid | -x irq]\n");
 fprintf(stderr,
     "       cpuset -g [-cir] [-d domain | -j jailid | -p pid | -t tid | -s setid |\n"
     "              -x irq]\n");
 exit(1);
}
