
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * db; } ;
struct TYPE_4__ {TYPE_1__ db; } ;
struct mlx4_en_rx_ring {int prod; TYPE_2__ wqres; } ;


 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void
mlx4_en_update_rx_prod_db(struct mlx4_en_rx_ring *ring)
{
 *ring->wqres.db.db = cpu_to_be32(ring->prod & 0xffff);
}
