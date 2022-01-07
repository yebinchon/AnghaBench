
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t
gf2_matrix_times(uint32_t *mat, uint32_t vec)
{
 uint32_t sum;

 sum = 0;
 while (vec) {
  if (vec & 1)
   sum ^= *mat;
  vec >>= 1;
  mat++;
 }
 return (sum);
}
