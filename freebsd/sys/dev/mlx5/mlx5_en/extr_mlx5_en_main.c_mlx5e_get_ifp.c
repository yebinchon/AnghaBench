
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {void* ifp; } ;



__attribute__((used)) static void *
mlx5e_get_ifp(void *vpriv)
{
 struct mlx5e_priv *priv = vpriv;

 return (priv->ifp);
}
