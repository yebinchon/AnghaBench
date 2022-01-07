
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;


 scalar_t__ inet_aton (char*,struct in_addr*) ;

__attribute__((used)) static int
IpAddr(char *s, struct in_addr *addr)
{
 if (inet_aton(s, addr) == 0)
  return (-1);
 else
  return (0);
}
