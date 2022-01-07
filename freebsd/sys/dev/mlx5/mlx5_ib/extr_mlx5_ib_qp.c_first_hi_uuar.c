
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_uuar_info {int dummy; } ;


 int first_med_uuar () ;
 int next_uuar (int) ;
 int num_med_uuar (struct mlx5_uuar_info*) ;

__attribute__((used)) static int first_hi_uuar(struct mlx5_uuar_info *uuari)
{
 int med;
 int i;
 int t;

 med = num_med_uuar(uuari);
 for (t = 0, i = first_med_uuar();; i = next_uuar(i)) {
  t++;
  if (t == med)
   return next_uuar(i);
 }

 return 0;
}
