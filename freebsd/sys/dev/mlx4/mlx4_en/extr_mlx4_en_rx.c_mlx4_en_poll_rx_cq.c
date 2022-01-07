
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx4_en_cq {int tot_rx; struct net_device* dev; } ;


 int mlx4_en_process_rx_cq (struct net_device*,struct mlx4_en_cq*,int) ;

__attribute__((used)) static int mlx4_en_poll_rx_cq(struct mlx4_en_cq *cq, int budget)
{
        struct net_device *dev = cq->dev;
        int done;

        done = mlx4_en_process_rx_cq(dev, cq, budget);
        cq->tot_rx += done;

        return done;

}
