
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vqs ;
typedef int u8 ;
struct virtchnl_queue_select {int vsi_id; } ;
struct iavf_sc {int dev; TYPE_1__* vsi_res; } ;
struct TYPE_2__ {int vsi_id; } ;


 int VIRTCHNL_OP_GET_STATS ;
 int device_printf (int ,char*,int) ;
 int iavf_send_pf_msg (struct iavf_sc*,int ,int *,int) ;

int
iavf_request_stats(struct iavf_sc *sc)
{
 struct virtchnl_queue_select vqs;
 int error = 0;

 vqs.vsi_id = sc->vsi_res->vsi_id;

 error = iavf_send_pf_msg(sc, VIRTCHNL_OP_GET_STATS,
     (u8 *)&vqs, sizeof(vqs));
 if (error)
  device_printf(sc->dev, "Error sending stats request to PF: %d\n", error);

 return (0);
}
