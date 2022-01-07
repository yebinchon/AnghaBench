
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stdout ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stdout, "Usage: hccontrol [-hN] [-n HCI_node_name] cmd [p1] [..]\n");
 exit(255);
}
