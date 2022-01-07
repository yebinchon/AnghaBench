
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ rss_dma; } ;
struct TYPE_6__ {TYPE_1__ flags; int rss_dma; } ;
typedef TYPE_2__ qla_host_t ;


 int qls_free_dmabuf (TYPE_2__*,int *) ;

__attribute__((used)) static void
qls_free_rss_dma(qla_host_t *ha)
{
 qls_free_dmabuf(ha, &ha->rss_dma);
 ha->flags.rss_dma = 0;
}
