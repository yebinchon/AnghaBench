
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoa_dma {int mutex; int tag; } ;


 int M_DEVBUF ;
 int bus_dma_tag_destroy (int ) ;
 int free (struct aoa_dma*,int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
aoa_dma_delete(struct aoa_dma *dma)
{
 bus_dma_tag_destroy(dma->tag);
 mtx_destroy(&dma->mutex);
 free(dma, M_DEVBUF);
}
