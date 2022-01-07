
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct in6_addr {int dummy; } ;


 int FNV1_32_INIT ;
 int fnv_32_buf (struct in6_addr const*,int,int ) ;

__attribute__((used)) static uint32_t
in6_gre_hashval(const struct in6_addr *src, const struct in6_addr *dst)
{
 uint32_t ret;

 ret = fnv_32_buf(src, sizeof(*src), FNV1_32_INIT);
 return (fnv_32_buf(dst, sizeof(*dst), ret));
}
