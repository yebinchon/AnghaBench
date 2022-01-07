
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int in_addr_t ;



__attribute__((used)) static in_addr_t
choose_ipaddr(in_addr_t **alist, in_addr_t net, in_addr_t netmask)
{

 for (; *alist; ++alist)
  if ((**alist & netmask) == net)
   return **alist;
 return 0;
}
