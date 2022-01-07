
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int alloc_buf_count; int head; } ;
struct octeon_device {TYPE_1__ sc_buf_pool; } ;
struct lio_soft_command {int node; } ;


 int STAILQ_INSERT_TAIL (int *,int *,int ) ;
 int atomic_subtract_int (int *,int) ;
 int entries ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
lio_free_soft_command(struct octeon_device *oct,
        struct lio_soft_command *sc)
{

 mtx_lock(&oct->sc_buf_pool.lock);

 STAILQ_INSERT_TAIL(&oct->sc_buf_pool.head, &sc->node, entries);

 atomic_subtract_int(&oct->sc_buf_pool.alloc_buf_count, 1);

 mtx_unlock(&oct->sc_buf_pool.lock);
}
