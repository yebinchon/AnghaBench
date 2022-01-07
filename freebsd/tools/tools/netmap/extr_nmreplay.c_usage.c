
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
     "usage: nmreplay [-v] [-D delay] [-B {[constant,]bps|ether,bps|real,speedup}] [-L loss]\n"
     "\t[-b burst] -f pcap-file -i <netmap:ifname|valeSSS:PPP>\n");
 exit(1);
}
