
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_2__ {int remote_id; int local_id; } ;
struct cm_id_private {TYPE_1__ id; int tid; } ;
struct cm_apr_msg {int private_data; int info; void* info_length; void* ap_status; int remote_comm_id; int local_comm_id; int hdr; } ;
typedef enum ib_cm_apr_status { ____Placeholder_ib_cm_apr_status } ib_cm_apr_status ;


 int CM_APR_ATTR_ID ;
 int cm_format_mad_hdr (int *,int ,int ) ;
 int memcpy (int ,void const*,void*) ;

__attribute__((used)) static void cm_format_apr(struct cm_apr_msg *apr_msg,
     struct cm_id_private *cm_id_priv,
     enum ib_cm_apr_status status,
     void *info,
     u8 info_length,
     const void *private_data,
     u8 private_data_len)
{
 cm_format_mad_hdr(&apr_msg->hdr, CM_APR_ATTR_ID, cm_id_priv->tid);
 apr_msg->local_comm_id = cm_id_priv->id.local_id;
 apr_msg->remote_comm_id = cm_id_priv->id.remote_id;
 apr_msg->ap_status = (u8) status;

 if (info && info_length) {
  apr_msg->info_length = info_length;
  memcpy(apr_msg->info, info, info_length);
 }

 if (private_data && private_data_len)
  memcpy(apr_msg->private_data, private_data, private_data_len);
}
