
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_mkey_seg {int status; } ;


 int MLX5_MKEY_STATUS_FREE ;
 int memset (struct mlx5_mkey_seg*,int ,int) ;

__attribute__((used)) static void set_linv_mkey_seg(struct mlx5_mkey_seg *seg)
{
 memset(seg, 0, sizeof(*seg));
 seg->status = MLX5_MKEY_STATUS_FREE;
}
