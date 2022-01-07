
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iser_data_buf {int dma_nents; int size; int sgl; } ;
struct icl_iser_pdu {int* dir; TYPE_3__* iser_conn; } ;
struct ib_device {int dummy; } ;
typedef enum iser_data_dir { ____Placeholder_iser_data_dir } iser_data_dir ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_6__ {TYPE_2__ ib_conn; } ;
struct TYPE_4__ {struct ib_device* ib_device; } ;


 int EINVAL ;
 int ISER_ERR (char*) ;
 int ib_dma_map_sg (struct ib_device*,int ,int ,int) ;

int
iser_dma_map_task_data(struct icl_iser_pdu *iser_pdu,
         struct iser_data_buf *data,
         enum iser_data_dir iser_dir,
         enum dma_data_direction dma_dir)
{
 struct ib_device *dev;

 iser_pdu->dir[iser_dir] = 1;
 dev = iser_pdu->iser_conn->ib_conn.device->ib_device;

 data->dma_nents = ib_dma_map_sg(dev, data->sgl, data->size, dma_dir);
 if (data->dma_nents == 0) {
  ISER_ERR("dma_map_sg failed");
  return (EINVAL);
 }

 return (0);
}
