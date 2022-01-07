
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct in_addr {int s_addr; } ;


 scalar_t__ IN_CLASSA (int ) ;
 int IN_CLASSA_NET ;
 scalar_t__ IN_CLASSB (int ) ;
 int IN_CLASSB_NET ;
 int IN_CLASSC_NET ;
 int htonl (int ) ;
 int ntohl (int ) ;

struct in_addr
addr2mask(struct in_addr addr)
{
  u_int32_t haddr = ntohl(addr.s_addr);

  haddr = IN_CLASSA(haddr) ? IN_CLASSA_NET :
          IN_CLASSB(haddr) ? IN_CLASSB_NET :
          IN_CLASSC_NET;
  addr.s_addr = htonl(haddr);

  return addr;
}
