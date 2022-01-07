
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_uuar_info {int * count; int bitmap; } ;


 int ENOMEM ;
 int first_hi_uuar (struct mlx5_uuar_info*) ;
 int max_uuari (struct mlx5_uuar_info*) ;
 int next_uuar (int) ;
 int set_bit (int,int ) ;
 int test_bit (int,int ) ;

__attribute__((used)) static int alloc_high_class_uuar(struct mlx5_uuar_info *uuari)
{
 int i;

 for (i = first_hi_uuar(uuari); i < max_uuari(uuari); i = next_uuar(i)) {
  if (!test_bit(i, uuari->bitmap)) {
   set_bit(i, uuari->bitmap);
   uuari->count[i]++;
   return i;
  }
 }

 return -ENOMEM;
}
