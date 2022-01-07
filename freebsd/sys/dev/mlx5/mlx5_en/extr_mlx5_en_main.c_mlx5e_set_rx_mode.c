
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int set_rx_mode_work; int wq; } ;
struct ifnet {struct mlx5e_priv* if_softc; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void
mlx5e_set_rx_mode(struct ifnet *ifp)
{
 struct mlx5e_priv *priv = ifp->if_softc;

 queue_work(priv->wq, &priv->set_rx_mode_work);
}
