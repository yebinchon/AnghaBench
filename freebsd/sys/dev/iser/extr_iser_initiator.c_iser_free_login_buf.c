
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iser_device {int ib_device; } ;
struct TYPE_2__ {struct iser_device* device; } ;
struct iser_conn {int * login_buf; int login_resp_dma; int login_req_dma; TYPE_1__ ib_conn; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ISCSI_DEF_MAX_RECV_SEG_LEN ;
 int ISER_RX_LOGIN_SIZE ;
 int M_ISER_INITIATOR ;
 int free (int *,int ) ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;

void
iser_free_login_buf(struct iser_conn *iser_conn)
{
 struct iser_device *device = iser_conn->ib_conn.device;

 if (!iser_conn->login_buf)
  return;

 if (iser_conn->login_req_dma)
  ib_dma_unmap_single(device->ib_device,
        iser_conn->login_req_dma,
        ISCSI_DEF_MAX_RECV_SEG_LEN, DMA_TO_DEVICE);

 if (iser_conn->login_resp_dma)
  ib_dma_unmap_single(device->ib_device,
        iser_conn->login_resp_dma,
        ISER_RX_LOGIN_SIZE, DMA_FROM_DEVICE);

 free(iser_conn->login_buf, M_ISER_INITIATOR);


 iser_conn->login_req_dma = 0;
 iser_conn->login_resp_dma = 0;
 iser_conn->login_buf = ((void*)0);
}
