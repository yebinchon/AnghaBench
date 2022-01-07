
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int seed ;


 int FNV1_32_INIT ;
 int arc4random () ;
 int fnv_32_buf (int *,int,int ) ;

uint32_t
m_ether_tcpip_hash_init(void)
{
 uint32_t seed;

 seed = arc4random();
 return (fnv_32_buf(&seed, sizeof(seed), FNV1_32_INIT));
}
