
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_rx_desc {int dma_addr; } ;
struct iser_device {int ib_device; } ;
struct ib_conn {struct iser_device* device; } ;
struct iser_conn {int qp_max_recv_dtos; struct iser_rx_desc* rx_descs; struct ib_conn ib_conn; } ;


 int DMA_FROM_DEVICE ;
 int ISER_RX_PAYLOAD_SIZE ;
 int M_ISER_INITIATOR ;
 int free (struct iser_rx_desc*,int ) ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;
 int iser_free_fastreg_pool (struct ib_conn*) ;

void
iser_free_rx_descriptors(struct iser_conn *iser_conn)
{
 int i;
 struct iser_rx_desc *rx_desc;
 struct ib_conn *ib_conn = &iser_conn->ib_conn;
 struct iser_device *device = ib_conn->device;

 iser_free_fastreg_pool(ib_conn);

 rx_desc = iser_conn->rx_descs;
 for (i = 0; i < iser_conn->qp_max_recv_dtos; i++, rx_desc++)
  ib_dma_unmap_single(device->ib_device, rx_desc->dma_addr,
        ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);

 free(iser_conn->rx_descs, M_ISER_INITIATOR);


 iser_conn->rx_descs = ((void*)0);
}
