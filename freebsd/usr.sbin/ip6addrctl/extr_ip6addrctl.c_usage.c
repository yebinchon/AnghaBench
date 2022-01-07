
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
 fprintf(stderr, "usage: ip6addrctl [show]\n");
 fprintf(stderr, "       ip6addrctl add "
  "<prefix> <precedence> <label>\n");
 fprintf(stderr, "       ip6addrctl delete <prefix>\n");
 fprintf(stderr, "       ip6addrctl flush\n");
 fprintf(stderr, "       ip6addrctl install <configfile>\n");

 exit(1);
}
