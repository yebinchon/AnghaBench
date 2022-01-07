
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_eth_addr_hash_node {int dummy; } ;
struct mlx5e_eth_addr_hash_head {int dummy; } ;


 struct mlx5e_eth_addr_hash_node* LIST_FIRST (struct mlx5e_eth_addr_hash_head*) ;
 int LIST_INSERT_HEAD (struct mlx5e_eth_addr_hash_head*,struct mlx5e_eth_addr_hash_node*,int ) ;
 int LIST_REMOVE (struct mlx5e_eth_addr_hash_node*,int ) ;
 int hlist ;

__attribute__((used)) static struct mlx5e_eth_addr_hash_node *
mlx5e_move_hn(struct mlx5e_eth_addr_hash_head *fh, struct mlx5e_eth_addr_hash_head *uh)
{
 struct mlx5e_eth_addr_hash_node *hn;

 hn = LIST_FIRST(fh);
 if (hn != ((void*)0)) {
  LIST_REMOVE(hn, hlist);
  LIST_INSERT_HEAD(uh, hn, hlist);
 }
 return (hn);
}
