
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kicks; } ;
struct ptnet_queue {int kick; TYPE_2__* sc; TYPE_1__ stats; } ;
struct TYPE_4__ {int iomem; } ;


 int bus_write_4 (int ,int ,int ) ;

__attribute__((used)) static inline void ptnet_kick(struct ptnet_queue *pq)
{



 bus_write_4(pq->sc->iomem, pq->kick, 0);
}
