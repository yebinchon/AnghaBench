
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;


 int PCTRIE_WIDTH ;

__attribute__((used)) static __inline uint64_t
pctrie_trimkey(uint64_t index, uint16_t level)
{
 uint64_t ret;

 ret = index;
 if (level > 0) {
  ret >>= level * PCTRIE_WIDTH;
  ret <<= level * PCTRIE_WIDTH;
 }
 return (ret);
}
