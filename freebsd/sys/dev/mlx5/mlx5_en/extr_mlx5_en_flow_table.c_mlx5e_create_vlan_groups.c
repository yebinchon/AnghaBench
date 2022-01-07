
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_flow_table {int dummy; } ;


 int ENOMEM ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int create_flow_group_in ;
 int kvfree (int *) ;
 int * mlx5_vzalloc (int) ;
 int mlx5e_create_vlan_groups_sub (struct mlx5e_flow_table*,int *,int) ;

__attribute__((used)) static int
mlx5e_create_vlan_groups(struct mlx5e_flow_table *ft)
{
 u32 *in;
 int inlen = MLX5_ST_SZ_BYTES(create_flow_group_in);
 int err;

 in = mlx5_vzalloc(inlen);
 if (!in)
  return (-ENOMEM);

 err = mlx5e_create_vlan_groups_sub(ft, in, inlen);

 kvfree(in);
 return (err);
}
