
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ib_sge {int lkey; int length; int addr; } ;
struct iser_rx_desc {int dma_addr; struct ib_sge rx_sg; } ;
struct iser_device {int ib_device; TYPE_1__* mr; } ;
struct ib_conn {struct iser_device* device; } ;
struct iser_conn {int qp_max_recv_dtos; int min_posted_rx; int num_rx_descs; struct iser_rx_desc* rx_descs; scalar_t__ rx_desc_head; struct ib_conn ib_conn; } ;
struct TYPE_2__ {int lkey; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int ISER_ERR (char*) ;
 int ISER_RX_PAYLOAD_SIZE ;
 int M_ISER_INITIATOR ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (struct iser_rx_desc*,int ) ;
 int ib_dma_map_single (int ,void*,int ,int ) ;
 scalar_t__ ib_dma_mapping_error (int ,int ) ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;
 scalar_t__ iser_create_fastreg_pool (struct ib_conn*,int) ;
 int iser_free_fastreg_pool (struct ib_conn*) ;
 struct iser_rx_desc* malloc (int,int ,int) ;

int iser_alloc_rx_descriptors(struct iser_conn *iser_conn, int cmds_max)
{
 int i, j;
 u64 dma_addr;
 struct iser_rx_desc *rx_desc;
 struct ib_sge *rx_sg;
 struct ib_conn *ib_conn = &iser_conn->ib_conn;
 struct iser_device *device = ib_conn->device;

 iser_conn->qp_max_recv_dtos = cmds_max;
 iser_conn->min_posted_rx = iser_conn->qp_max_recv_dtos >> 2;

 if (iser_create_fastreg_pool(ib_conn, cmds_max))
  goto create_rdma_reg_res_failed;


 iser_conn->num_rx_descs = cmds_max;
 iser_conn->rx_descs = malloc(iser_conn->num_rx_descs *
    sizeof(struct iser_rx_desc), M_ISER_INITIATOR,
    M_WAITOK | M_ZERO);
 if (!iser_conn->rx_descs)
  goto rx_desc_alloc_fail;

 rx_desc = iser_conn->rx_descs;

 for (i = 0; i < iser_conn->qp_max_recv_dtos; i++, rx_desc++) {
  dma_addr = ib_dma_map_single(device->ib_device, (void *)rx_desc,
     ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
  if (ib_dma_mapping_error(device->ib_device, dma_addr))
   goto rx_desc_dma_map_failed;

  rx_desc->dma_addr = dma_addr;

  rx_sg = &rx_desc->rx_sg;
  rx_sg->addr = rx_desc->dma_addr;
  rx_sg->length = ISER_RX_PAYLOAD_SIZE;
  rx_sg->lkey = device->mr->lkey;
 }

 iser_conn->rx_desc_head = 0;

 return (0);

rx_desc_dma_map_failed:
 rx_desc = iser_conn->rx_descs;
 for (j = 0; j < i; j++, rx_desc++)
  ib_dma_unmap_single(device->ib_device, rx_desc->dma_addr,
        ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
 free(iser_conn->rx_descs, M_ISER_INITIATOR);
 iser_conn->rx_descs = ((void*)0);
rx_desc_alloc_fail:
 iser_free_fastreg_pool(ib_conn);
create_rdma_reg_res_failed:
 ISER_ERR("failed allocating rx descriptors / data buffers");

 return (ENOMEM);
}
