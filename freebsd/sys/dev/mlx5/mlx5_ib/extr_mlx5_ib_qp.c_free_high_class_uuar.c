
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_uuar_info {int * count; int bitmap; } ;


 int clear_bit (int,int ) ;

__attribute__((used)) static void free_high_class_uuar(struct mlx5_uuar_info *uuari, int uuarn)
{
 clear_bit(uuarn, uuari->bitmap);
 --uuari->count[uuarn];
}
