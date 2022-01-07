
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "%s\n%s\n%s\n%s\n%s\n%s\n%s\n",
     "usage: arp [-n] [-i interface] hostname",
     "       arp [-n] [-i interface] -a",
     "       arp -d hostname [pub]",
     "       arp -d [-i interface] -a",
     "       arp -s hostname ether_addr [temp] [reject | blackhole] [pub [only]]",
     "       arp -S hostname ether_addr [temp] [reject | blackhole] [pub [only]]",
     "       arp -f filename");
 exit(1);
}
