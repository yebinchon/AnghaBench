
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline int
mlx5e_hash_eth_addr(const u8 * addr)
{
 return (addr[5]);
}
