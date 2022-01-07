
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;


 int PCTRIE_MASK ;
 int PCTRIE_WIDTH ;

__attribute__((used)) static __inline int
pctrie_slot(uint64_t index, uint16_t level)
{

 return ((index >> (level * PCTRIE_WIDTH)) & PCTRIE_MASK);
}
