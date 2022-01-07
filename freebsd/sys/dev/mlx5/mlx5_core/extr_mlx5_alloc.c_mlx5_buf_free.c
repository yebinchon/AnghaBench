
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int buf; } ;
struct mlx5_buf {int page_list; int dma_tag; int dma_map; TYPE_1__ direct; } ;


 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int kfree (int ) ;

void mlx5_buf_free(struct mlx5_core_dev *dev, struct mlx5_buf *buf)
{

 bus_dmamap_unload(buf->dma_tag, buf->dma_map);
 bus_dmamem_free(buf->dma_tag, buf->direct.buf, buf->dma_map);
 bus_dma_tag_destroy(buf->dma_tag);
 kfree(buf->page_list);
}
