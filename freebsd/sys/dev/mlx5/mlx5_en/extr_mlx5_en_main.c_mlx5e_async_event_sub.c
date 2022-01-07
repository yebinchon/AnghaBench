
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int update_carrier_work; int wq; } ;
typedef enum mlx5_dev_event { ____Placeholder_mlx5_dev_event } mlx5_dev_event ;




 int queue_work (int ,int *) ;

__attribute__((used)) static void
mlx5e_async_event_sub(struct mlx5e_priv *priv,
    enum mlx5_dev_event event)
{
 switch (event) {
 case 128:
 case 129:
  queue_work(priv->wq, &priv->update_carrier_work);
  break;

 default:
  break;
 }
}
