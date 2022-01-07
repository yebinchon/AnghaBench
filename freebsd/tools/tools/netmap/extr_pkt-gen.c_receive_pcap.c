
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pcap_pkthdr {scalar_t__ len; } ;
struct my_ctrs {int pkts; int bytes; } ;



__attribute__((used)) static void
receive_pcap(u_char *user, const struct pcap_pkthdr * h,
 const u_char * bytes)
{
 struct my_ctrs *ctr = (struct my_ctrs *)user;
 (void)bytes;
 ctr->bytes += h->len;
 ctr->pkts++;
}
