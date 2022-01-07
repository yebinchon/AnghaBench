
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int gf2_matrix_times (int *,int ) ;

__attribute__((used)) static inline void
gf2_matrix_square(uint32_t *square, uint32_t *mat)
{
 int n;

 for (n = 0; n < 32; n++)
  square[n] = gf2_matrix_times(mat, mat[n]);
}
