
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ether_addr {int dummy; } ;


 struct ether_addr* ether_aton (char const*) ;
 scalar_t__ ether_hostton (char const*,struct ether_addr*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
get_ether(char const *text, struct ether_addr *addr)
{
 struct ether_addr *paddr;

 paddr = ether_aton(text);
 if (paddr != ((void*)0)) {
  *addr = *paddr;
  return (0);
 }
 if (ether_hostton(text, addr)) {
  warnx("no match for host %s found", text);
  return (-1);
 }
 return (0);
}
