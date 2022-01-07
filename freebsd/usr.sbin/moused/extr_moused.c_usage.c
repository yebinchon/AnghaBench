
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
    fprintf(stderr, "%s\n%s\n%s\n%s\n%s\n",
 "usage: moused [-DRcdfs] [-I file] [-F rate] [-r resolution] [-S baudrate]",
 "              [-VH [-U threshold]] [-a X[,Y]] [-C threshold] [-m N=M] [-w N]",
 "              [-z N] [-t <mousetype>] [-l level] [-3 [-E timeout]]",
 "              [-T distance[,time[,after]]] -p <port>",
 "       moused [-d] -i <port|if|type|model|all> -p <port>");
    exit(1);
}
