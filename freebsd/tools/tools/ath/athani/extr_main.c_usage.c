
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
 fprintf(stderr, "usage: athani [-i interface] [-l]\n");
 fprintf(stderr, "    -i: interface\n");
 fprintf(stderr, "    -l: list ANI labels\n");
 fprintf(stderr, "  If no args are given after flags, the ANI state will be listed.\n");
 fprintf(stderr, "  To set, use '<label> <value>' to set the state\n");
 exit(-1);
}
