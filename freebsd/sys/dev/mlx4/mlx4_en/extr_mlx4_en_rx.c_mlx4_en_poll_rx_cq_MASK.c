#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_device {int dummy; } ;
struct mlx4_en_cq {int tot_rx; struct net_device* dev; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,struct mlx4_en_cq*,int) ; 

__attribute__((used)) static int FUNC1(struct mlx4_en_cq *cq, int budget)
{
        struct net_device *dev = cq->dev;
        int done;

        done = FUNC0(dev, cq, budget);
        cq->tot_rx += done;

        return done;

}