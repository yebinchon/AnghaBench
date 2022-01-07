
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
"usage: switch_tls [-i | -s] local-address local-port foreign-address foreign-port\n"
"       switch_tls [-i | -s] local-address:local-port foreign-address:foreign-port\n"
"       switch_tls [-i | -s] local-address.local-port foreign-address.foreign-port\n"
"       switch_tls [-l | -i | -s] -a\n"
"       switch_tls [-l | -i | -s] -S stack\n");
 exit(1);
}
