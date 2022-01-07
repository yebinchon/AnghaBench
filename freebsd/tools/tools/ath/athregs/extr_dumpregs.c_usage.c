
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
 fprintf(stderr, "usage: athregs [-i interface] [-abdkmqxz]\n");
 fprintf(stderr, "-a	display all registers\n");
 fprintf(stderr, "-b	display baseband registers\n");
 fprintf(stderr, "-d	display DCU registers\n");
 fprintf(stderr, "-k	display key cache registers\n");
 fprintf(stderr, "-m	display \"MAC\" registers (default)\n");
 fprintf(stderr, "-q	display QCU registers\n");
 fprintf(stderr, "-x	display XR registers\n");
 fprintf(stderr, "-z	display interrupt registers\n");
 fprintf(stderr, "\n");
 fprintf(stderr, "-A	display register address\n");
 fprintf(stderr, "-N	suppress display of register name\n");
 exit(-1);
}
