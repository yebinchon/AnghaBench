
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned int INFINIBAND_ALEN ;
 scalar_t__ memcmp (int const*,int const*,int) ;

__attribute__((used)) static int ipoib_mcast_addr_is_valid(const u8 *addr, unsigned int addrlen,
         const u8 *broadcast)
{
 if (addrlen != INFINIBAND_ALEN)
  return 0;

 if (memcmp(addr, broadcast, 6))
  return 0;

 if (memcmp(addr + 7, broadcast + 7, 3))
  return 0;
 return 1;
}
