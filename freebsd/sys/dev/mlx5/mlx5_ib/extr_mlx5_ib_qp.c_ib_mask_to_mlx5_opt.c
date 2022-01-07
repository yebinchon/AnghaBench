
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ib_nr_to_mlx5_nr (int) ;

__attribute__((used)) static int ib_mask_to_mlx5_opt(int ib_mask)
{
 int result = 0;
 int i;

 for (i = 0; i < 8 * sizeof(int); i++) {
  if ((1 << i) & ib_mask)
   result |= ib_nr_to_mlx5_nr(1 << i);
 }

 return result;
}
