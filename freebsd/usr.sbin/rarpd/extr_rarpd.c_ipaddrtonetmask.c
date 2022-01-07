
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int in_addr_t ;


 scalar_t__ IN_CLASSA (int ) ;
 int IN_CLASSA_NET ;
 scalar_t__ IN_CLASSB (int ) ;
 int IN_CLASSB_NET ;
 scalar_t__ IN_CLASSC (int ) ;
 int IN_CLASSC_NET ;
 int LOG_DEBUG ;
 int htonl (int) ;
 int logmsg (int ,char*,int ) ;
 int ntohl (int ) ;

__attribute__((used)) static in_addr_t
ipaddrtonetmask(in_addr_t addr)
{

 addr = ntohl(addr);
 if (IN_CLASSA(addr))
  return htonl(IN_CLASSA_NET);
 if (IN_CLASSB(addr))
  return htonl(IN_CLASSB_NET);
 if (IN_CLASSC(addr))
  return htonl(IN_CLASSC_NET);
 logmsg(LOG_DEBUG, "unknown IP address class: %08X", addr);
 return htonl(0xffffffff);
}
