
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_dl {int dummy; } ;
struct TYPE_6__ {int if_mc; int if_uc; } ;
struct mlx5e_priv {TYPE_3__ eth_addr; int mdev; struct ifnet* ifp; } ;
struct TYPE_5__ {int addr; } ;
struct mlx5e_eth_addr_hash_node {unsigned int mpfs_index; TYPE_2__ ai; int action; } ;
struct mlx5e_eth_addr_hash_head {int dummy; } ;
struct mlx5e_copy_addr_ctx {int success; struct mlx5e_eth_addr_hash_head* fill; struct mlx5e_eth_addr_hash_head* free; } ;
struct ifnet {TYPE_1__* if_addr; } ;
struct TYPE_4__ {scalar_t__ ifa_addr; } ;


 int LIST_INIT (struct mlx5e_eth_addr_hash_head*) ;
 int LIST_INSERT_HEAD (struct mlx5e_eth_addr_hash_head*,struct mlx5e_eth_addr_hash_node*,int ) ;
 int LLADDR (struct sockaddr_dl*) ;
 int MLX5E_ACTION_ADD ;
 int MPASS (int ) ;
 int M_MLX5EN ;
 int M_WAITOK ;
 int M_ZERO ;
 int PRIV_ASSERT_LOCKED (struct mlx5e_priv*) ;
 int ether_addr_copy (int ,int ) ;
 int free (struct mlx5e_eth_addr_hash_node*,int ) ;
 int hlist ;
 int if_foreach_lladdr (struct ifnet*,int ,struct mlx5e_copy_addr_ctx*) ;
 int if_foreach_llmaddr (struct ifnet*,int ,struct mlx5e_copy_addr_ctx*) ;
 int if_lladdr_count (struct ifnet*) ;
 int if_llmaddr_count (struct ifnet*) ;
 struct mlx5e_eth_addr_hash_node* malloc (int,int ,int) ;
 int mlx5_mpfs_add_mac (int ,unsigned int*,int ) ;
 scalar_t__ mlx5e_add_eth_addr_to_hash (int ,struct mlx5e_eth_addr_hash_node*) ;
 int mlx5e_copy_addr ;
 struct mlx5e_eth_addr_hash_node* mlx5e_move_hn (struct mlx5e_eth_addr_hash_head*,struct mlx5e_eth_addr_hash_head*) ;
 struct mlx5e_eth_addr_hash_node* mlx5e_remove_hn (struct mlx5e_eth_addr_hash_head*) ;

__attribute__((used)) static void
mlx5e_sync_ifp_addr(struct mlx5e_priv *priv)
{
 struct mlx5e_copy_addr_ctx ctx;
 struct mlx5e_eth_addr_hash_head head_free;
 struct mlx5e_eth_addr_hash_head head_uc;
 struct mlx5e_eth_addr_hash_head head_mc;
 struct mlx5e_eth_addr_hash_node *hn;
 struct ifnet *ifp = priv->ifp;
 size_t x;
 size_t num;

 PRIV_ASSERT_LOCKED(priv);

retry:
 LIST_INIT(&head_free);
 LIST_INIT(&head_uc);
 LIST_INIT(&head_mc);
 num = 1 + if_lladdr_count(ifp) + if_llmaddr_count(ifp);


 for (x = 0; x != num; x++) {
  hn = malloc(sizeof(*hn), M_MLX5EN, M_WAITOK | M_ZERO);
  hn->action = MLX5E_ACTION_ADD;
  hn->mpfs_index = -1U;
  LIST_INSERT_HEAD(&head_free, hn, hlist);
 }

 hn = mlx5e_move_hn(&head_free, &head_uc);
 MPASS(hn != ((void*)0));

 ether_addr_copy(hn->ai.addr,
     LLADDR((struct sockaddr_dl *)(ifp->if_addr->ifa_addr)));

 ctx.free = &head_free;
 ctx.fill = &head_uc;
 ctx.success = 1;
 if_foreach_lladdr(ifp, mlx5e_copy_addr, &ctx);
 if (ctx.success == 0)
  goto cleanup;

 ctx.fill = &head_mc;
 if_foreach_llmaddr(ifp, mlx5e_copy_addr, &ctx);
 if (ctx.success == 0)
  goto cleanup;



 while ((hn = mlx5e_remove_hn(&head_uc)) != ((void*)0)) {
  if (mlx5e_add_eth_addr_to_hash(priv->eth_addr.if_uc, hn) == 0)
   continue;
  if (hn->mpfs_index == -1U)
   mlx5_mpfs_add_mac(priv->mdev, &hn->mpfs_index, hn->ai.addr);
 }



 while ((hn = mlx5e_remove_hn(&head_mc)) != ((void*)0)) {
  if (mlx5e_add_eth_addr_to_hash(priv->eth_addr.if_mc, hn) == 0)
   continue;
 }

cleanup:
 while ((hn = mlx5e_remove_hn(&head_uc)) != ((void*)0))
  free(hn, M_MLX5EN);
 while ((hn = mlx5e_remove_hn(&head_mc)) != ((void*)0))
  free(hn, M_MLX5EN);
 while ((hn = mlx5e_remove_hn(&head_free)) != ((void*)0))
  free(hn, M_MLX5EN);

 if (ctx.success == 0)
  goto retry;
}
