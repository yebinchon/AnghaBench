
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int GET_LE32 (int const*) ;

__attribute__((used)) static inline uint64_t GET_LE64(const uint8_t *p)
{
 return (((uint64_t)GET_LE32(p + 4) << 32) |
  GET_LE32(p));
}
