
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
"usage: tcpdrop local-address local-port foreign-address foreign-port\n"
"       tcpdrop local-address:local-port foreign-address:foreign-port\n"
"       tcpdrop local-address.local-port foreign-address.foreign-port\n"
"       tcpdrop [-l] -a\n"
"       tcpdrop [-l] -S stack\n"
"       tcpdrop [-l] -s state\n"
"       tcpdrop [-l] -S stack -s state\n");
 exit(1);
}
