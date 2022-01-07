
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_tool_addr {unsigned long func; unsigned long slot; unsigned long bus; unsigned long domain; } ;


 scalar_t__ isdigit (char const) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 unsigned long strtoul (char const*,char**,int) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
parse_pci_addr(const char *addrstr, struct mlx5_tool_addr *addr)
{
 char *eppos;
 unsigned long selarr[4];
 int i;

 if (addrstr == ((void*)0)) {
  warnx("no pci address specified");
  return (1);
 }
 if (strncmp(addrstr, "pci", 3) == 0) {
  addrstr += 3;
  i = 0;
  while (isdigit(*addrstr) && i < 4) {
   selarr[i++] = strtoul(addrstr, &eppos, 10);
   addrstr = eppos;
   if (*addrstr == ':')
    addrstr++;
  }
  if (i > 0 && *addrstr == '\0') {
   addr->func = (i > 2) ? selarr[--i] : 0;
   addr->slot = (i > 0) ? selarr[--i] : 0;
   addr->bus = (i > 0) ? selarr[--i] : 0;
   addr->domain = (i > 0) ? selarr[--i] : 0;
   return (0);
  }
 }
 warnx("invalid pci address %s", addrstr);
 return (1);
}
