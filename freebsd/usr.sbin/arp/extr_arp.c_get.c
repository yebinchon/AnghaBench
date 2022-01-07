
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;


 int ARP_XO_VERSION ;
 struct sockaddr_in* getaddr (char*) ;
 int inet_ntoa (TYPE_1__) ;
 int print_entry ;
 int rifname ;
 int search (int ,int ) ;
 int xo_close_container (char*) ;
 int xo_close_list (char*) ;
 int xo_emit (char*,...) ;
 int xo_finish () ;
 int xo_open_container (char*) ;
 int xo_open_list (char*) ;
 int xo_set_version (int ) ;

__attribute__((used)) static int
get(char *host)
{
 struct sockaddr_in *addr;
 int found;

 addr = getaddr(host);
 if (addr == ((void*)0))
  return (1);

 xo_set_version(ARP_XO_VERSION);
 xo_open_container("arp");
 xo_open_list("arp-cache");

 found = search(addr->sin_addr.s_addr, print_entry);

 if (found == 0) {
  xo_emit("{d:hostname/%s} ({d:ip-address/%s}) -- no entry",
      host, inet_ntoa(addr->sin_addr));
  if (rifname)
   xo_emit(" on {d:interface/%s}", rifname);
  xo_emit("\n");
 }

 xo_close_list("arp-cache");
 xo_close_container("arp");
 xo_finish();

 return (found == 0);
}
