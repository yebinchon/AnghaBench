
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct mlx5_buf {int dev; int load_done; int * page_list; } ;
struct TYPE_3__ {scalar_t__ ds_len; int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int KASSERT (int,char*) ;
 int MLX5_DMA_DONE (int ) ;
 int MLX5_DMA_LOCK (int ) ;
 int MLX5_DMA_OWNED (int ) ;
 int MLX5_DMA_UNLOCK (int ) ;
 int MLX5_LOAD_ST_FAILURE ;
 int MLX5_LOAD_ST_SUCCESS ;
 scalar_t__ PAGE_SIZE ;

__attribute__((used)) static void
mlx5_buf_load_mem_cb(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct mlx5_buf *buf;
 uint8_t owned;
 int x;

 buf = (struct mlx5_buf *)arg;
 owned = MLX5_DMA_OWNED(buf->dev);

 if (!owned)
  MLX5_DMA_LOCK(buf->dev);

 if (error == 0) {
  for (x = 0; x != nseg; x++) {
   buf->page_list[x] = segs[x].ds_addr;
   KASSERT(segs[x].ds_len == PAGE_SIZE, ("Invalid segment size"));
  }
  buf->load_done = MLX5_LOAD_ST_SUCCESS;
 } else {
  buf->load_done = MLX5_LOAD_ST_FAILURE;
 }
 MLX5_DMA_DONE(buf->dev);

 if (!owned)
  MLX5_DMA_UNLOCK(buf->dev);
}
