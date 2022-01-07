
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vqs ;
typedef int u8 ;
struct virtchnl_queue_select {int tx_queues; int rx_queues; int vsi_id; } ;
struct TYPE_4__ {int num_tx_queues; } ;
struct iavf_sc {TYPE_2__ vsi; TYPE_1__* vsi_res; } ;
struct TYPE_3__ {int vsi_id; } ;


 int VIRTCHNL_OP_DISABLE_QUEUES ;
 int iavf_send_pf_msg (struct iavf_sc*,int ,int *,int) ;

int
iavf_disable_queues(struct iavf_sc *sc)
{
 struct virtchnl_queue_select vqs;

 vqs.vsi_id = sc->vsi_res->vsi_id;


 vqs.tx_queues = (1 << sc->vsi.num_tx_queues) - 1;
 vqs.rx_queues = vqs.tx_queues;
 iavf_send_pf_msg(sc, VIRTCHNL_OP_DISABLE_QUEUES,
      (u8 *)&vqs, sizeof(vqs));
 return (0);
}
