
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint32_t ;


 int FNV1_32_INIT ;
 int fnv_32_buf (int *,int,int ) ;

__attribute__((used)) static uint32_t
key_u32hash(uint32_t val)
{

 return (fnv_32_buf(&val, sizeof(val), FNV1_32_INIT));
}
