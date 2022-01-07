
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_uuar_info {scalar_t__* count; } ;


 int first_hi_uuar (struct mlx5_uuar_info*) ;
 int first_med_uuar () ;
 int next_uuar (int) ;

__attribute__((used)) static int alloc_med_class_uuar(struct mlx5_uuar_info *uuari)
{
 int minidx = first_med_uuar();
 int i;

 for (i = first_med_uuar(); i < first_hi_uuar(uuari); i = next_uuar(i)) {
  if (uuari->count[i] < uuari->count[minidx])
   minidx = i;
 }

 uuari->count[minidx]++;
 return minidx;
}
