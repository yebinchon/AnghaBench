
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockaddr_dl {scalar_t__ sdl_alen; } ;
struct mlx4_en_priv {int mc_list; } ;
struct mlx4_en_addr_list {int list; int addr; } ;


 scalar_t__ ETHER_ADDR_LEN ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int LLADDR (struct sockaddr_dl*) ;
 int en_err (struct mlx4_en_priv*,char*) ;
 struct mlx4_en_addr_list* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static u_int mlx4_copy_maddr(void *arg, struct sockaddr_dl *sdl, u_int count)
{
 struct mlx4_en_priv *priv = arg;
 struct mlx4_en_addr_list *tmp;

 if (sdl->sdl_alen != ETHER_ADDR_LEN)
  return (0);
 tmp = kzalloc(sizeof(struct mlx4_en_addr_list), GFP_ATOMIC);
 if (tmp == ((void*)0)) {
  en_err(priv, "Failed to allocate address list\n");
  return (0);
 }
 memcpy(tmp->addr, LLADDR(sdl), ETH_ALEN);
 list_add_tail(&tmp->list, &priv->mc_list);
 return (1);
}
