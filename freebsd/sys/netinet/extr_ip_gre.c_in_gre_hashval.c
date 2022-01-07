
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int src ;
typedef int in_addr_t ;
typedef int dst ;


 int FNV1_32_INIT ;
 int fnv_32_buf (int *,int,int ) ;

__attribute__((used)) static uint32_t
in_gre_hashval(in_addr_t src, in_addr_t dst)
{
 uint32_t ret;

 ret = fnv_32_buf(&src, sizeof(src), FNV1_32_INIT);
 return (fnv_32_buf(&dst, sizeof(dst), ret));
}
