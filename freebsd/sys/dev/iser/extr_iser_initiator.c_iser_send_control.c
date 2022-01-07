
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iser_tx_desc {int num_sge; struct ib_sge* tx_sg; int type; } ;
struct iser_device {TYPE_2__* mr; int ib_device; } ;
struct TYPE_6__ {struct iser_device* device; } ;
struct iser_conn {TYPE_3__ ib_conn; int handoff_done; int login_req_dma; } ;
struct TYPE_4__ {size_t ip_data_len; } ;
struct icl_iser_pdu {struct iser_tx_desc desc; TYPE_1__ icl_pdu; } ;
struct ib_sge {size_t length; int lkey; int addr; } ;
struct TYPE_5__ {int lkey; } ;


 int DMA_TO_DEVICE ;
 int ISCSI_TX_CONTROL ;
 int ISER_ERR (char*,struct iser_conn*,int) ;
 int ib_dma_sync_single_for_cpu (int ,int ,size_t,int ) ;
 int ib_dma_sync_single_for_device (int ,int ,size_t,int ) ;
 int iser_create_send_desc (struct iser_conn*,struct iser_tx_desc*) ;
 int iser_post_recvl (struct iser_conn*) ;
 int iser_post_send (TYPE_3__*,struct iser_tx_desc*,int) ;

int
iser_send_control(struct iser_conn *iser_conn,
    struct icl_iser_pdu *iser_pdu)
{
 struct iser_tx_desc *mdesc;
 struct iser_device *device;
 size_t datalen = iser_pdu->icl_pdu.ip_data_len;
 int err;

 mdesc = &iser_pdu->desc;


 mdesc->type = ISCSI_TX_CONTROL;
 iser_create_send_desc(iser_conn, mdesc);

 device = iser_conn->ib_conn.device;

 if (datalen > 0) {
  struct ib_sge *tx_dsg = &mdesc->tx_sg[1];
  ib_dma_sync_single_for_cpu(device->ib_device,
    iser_conn->login_req_dma, datalen,
    DMA_TO_DEVICE);

  ib_dma_sync_single_for_device(device->ib_device,
   iser_conn->login_req_dma, datalen,
   DMA_TO_DEVICE);

  tx_dsg->addr = iser_conn->login_req_dma;
  tx_dsg->length = datalen;
  tx_dsg->lkey = device->mr->lkey;
  mdesc->num_sge = 2;
 }


 if (!iser_conn->handoff_done) {
  err = iser_post_recvl(iser_conn);
  if (err)
   goto send_control_error;
 }

 err = iser_post_send(&iser_conn->ib_conn, mdesc, 1);
 if (!err)
  return (0);

send_control_error:
 ISER_ERR("conn %p failed err %d", iser_conn, err);

 return (err);

}
