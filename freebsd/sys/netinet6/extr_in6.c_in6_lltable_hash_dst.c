
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct in6_addr {int * s6_addr32; } ;


 int IN6_LLTBL_HASH (int ,int ) ;

__attribute__((used)) static inline uint32_t
in6_lltable_hash_dst(const struct in6_addr *dst, uint32_t hsize)
{

 return (IN6_LLTBL_HASH(dst->s6_addr32[3], hsize));
}
