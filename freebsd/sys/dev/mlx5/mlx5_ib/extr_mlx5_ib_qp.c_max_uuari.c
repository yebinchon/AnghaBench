
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_uuar_info {int num_uars; } ;



__attribute__((used)) static int max_uuari(struct mlx5_uuar_info *uuari)
{
 return uuari->num_uars * 4;
}
