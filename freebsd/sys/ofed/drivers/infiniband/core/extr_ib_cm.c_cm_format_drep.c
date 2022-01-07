
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int remote_id; int local_id; } ;
struct cm_id_private {TYPE_1__ id; int tid; } ;
struct cm_drep_msg {int private_data; int remote_comm_id; int local_comm_id; int hdr; } ;


 int CM_DREP_ATTR_ID ;
 int cm_format_mad_hdr (int *,int ,int ) ;
 int memcpy (int ,void const*,scalar_t__) ;

__attribute__((used)) static void cm_format_drep(struct cm_drep_msg *drep_msg,
     struct cm_id_private *cm_id_priv,
     const void *private_data,
     u8 private_data_len)
{
 cm_format_mad_hdr(&drep_msg->hdr, CM_DREP_ATTR_ID, cm_id_priv->tid);
 drep_msg->local_comm_id = cm_id_priv->id.local_id;
 drep_msg->remote_comm_id = cm_id_priv->id.remote_id;

 if (private_data && private_data_len)
  memcpy(drep_msg->private_data, private_data, private_data_len);
}
