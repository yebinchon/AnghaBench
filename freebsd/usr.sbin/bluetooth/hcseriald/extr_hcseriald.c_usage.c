
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* hcseriald ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "Usage: %s -f device -n node_name [-s speed -d -h]\n" "Where:\n" "\t-f device    tty device name, ex. /dev/cuau1\n" "\t-n node_name set Netgraph node name to node_name\n" "\t-s speed     set tty speed, ex. 115200\n" "\t-d           run in foreground\n" "\t-h           display this message\n",






   hcseriald);
 exit(255);
}
