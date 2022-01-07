
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct cm_rtu_msg {int private_data; int remote_comm_id; int local_comm_id; int hdr; } ;
struct TYPE_2__ {int remote_id; int local_id; } ;
struct cm_id_private {TYPE_1__ id; int tid; } ;


 int CM_RTU_ATTR_ID ;
 int cm_format_mad_hdr (int *,int ,int ) ;
 int memcpy (int ,void const*,scalar_t__) ;

__attribute__((used)) static void cm_format_rtu(struct cm_rtu_msg *rtu_msg,
     struct cm_id_private *cm_id_priv,
     const void *private_data,
     u8 private_data_len)
{
 cm_format_mad_hdr(&rtu_msg->hdr, CM_RTU_ATTR_ID, cm_id_priv->tid);
 rtu_msg->local_comm_id = cm_id_priv->id.local_id;
 rtu_msg->remote_comm_id = cm_id_priv->id.remote_id;

 if (private_data && private_data_len)
  memcpy(rtu_msg->private_data, private_data, private_data_len);
}
