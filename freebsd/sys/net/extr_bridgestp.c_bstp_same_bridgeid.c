
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_char ;


 int ETHER_ADDR_LEN ;
 int PV2ADDR (int ,int *) ;
 scalar_t__ bstp_addr_cmp (int *,int *) ;

__attribute__((used)) static int
bstp_same_bridgeid(uint64_t id1, uint64_t id2)
{
 u_char addr1[ETHER_ADDR_LEN];
 u_char addr2[ETHER_ADDR_LEN];

 PV2ADDR(id1, addr1);
 PV2ADDR(id2, addr2);

 if (bstp_addr_cmp(addr1, addr2) == 0)
  return (1);

 return (0);
}
