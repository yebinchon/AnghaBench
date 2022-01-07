
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct sockaddr_dl {int dummy; } ;
struct TYPE_2__ {int addr; } ;
struct mlx5e_eth_addr_hash_node {TYPE_1__ ai; } ;
struct mlx5e_copy_addr_ctx {int success; int fill; int free; } ;


 int LLADDR (struct sockaddr_dl*) ;
 int ether_addr_copy (int ,int ) ;
 struct mlx5e_eth_addr_hash_node* mlx5e_move_hn (int ,int ) ;

__attribute__((used)) static u_int
mlx5e_copy_addr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct mlx5e_copy_addr_ctx *ctx = arg;
 struct mlx5e_eth_addr_hash_node *hn;

 hn = mlx5e_move_hn(ctx->free, ctx->fill);
 if (hn == ((void*)0)) {
  ctx->success = 0;
  return (0);
 }
 ether_addr_copy(hn->ai.addr, LLADDR(sdl));

 return (1);
}
