
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;
typedef scalar_t__ in_addr_t ;


 scalar_t__ ntohl (int ) ;

int
prison_qcmp_v4(const void *ip1, const void *ip2)
{
 in_addr_t iaa, iab;






 iaa = ntohl(((const struct in_addr *)ip1)->s_addr);
 iab = ntohl(((const struct in_addr *)ip2)->s_addr);





 if (iaa > iab)
  return (1);
 else if (iaa < iab)
  return (-1);
 else
  return (0);
}
