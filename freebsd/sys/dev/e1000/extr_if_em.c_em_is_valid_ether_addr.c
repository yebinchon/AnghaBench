
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ETHER_ADDR_LEN ;
 int FALSE ;
 int TRUE ;
 int bcmp (int*,char*,int ) ;

__attribute__((used)) static int
em_is_valid_ether_addr(u8 *addr)
{
 char zero_addr[6] = { 0, 0, 0, 0, 0, 0 };

 if ((addr[0] & 1) || (!bcmp(addr, zero_addr, ETHER_ADDR_LEN))) {
  return (FALSE);
 }

 return (TRUE);
}
