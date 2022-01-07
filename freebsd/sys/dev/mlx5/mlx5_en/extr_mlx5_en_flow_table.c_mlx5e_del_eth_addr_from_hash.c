
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_eth_addr_hash_node {int dummy; } ;


 int LIST_REMOVE (struct mlx5e_eth_addr_hash_node*,int ) ;
 int M_MLX5EN ;
 int free (struct mlx5e_eth_addr_hash_node*,int ) ;
 int hlist ;

__attribute__((used)) static void
mlx5e_del_eth_addr_from_hash(struct mlx5e_eth_addr_hash_node *hn)
{
 LIST_REMOVE(hn, hlist);
 free(hn, M_MLX5EN);
}
