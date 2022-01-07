
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_cm_sidr_rep_param {scalar_t__ private_data_len; scalar_t__ private_data; scalar_t__ info_length; scalar_t__ info; int qkey; int qp_num; int status; } ;
struct cm_sidr_rep_msg {int private_data; int info; int qkey; int service_id; int status; int request_id; int hdr; } ;
struct TYPE_2__ {int service_id; int remote_id; } ;
struct cm_id_private {TYPE_1__ id; int tid; } ;


 int CM_SIDR_REP_ATTR_ID ;
 int cm_format_mad_hdr (int *,int ,int ) ;
 int cm_sidr_rep_set_qpn (struct cm_sidr_rep_msg*,int ) ;
 int cpu_to_be32 (int ) ;
 int memcpy (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void cm_format_sidr_rep(struct cm_sidr_rep_msg *sidr_rep_msg,
          struct cm_id_private *cm_id_priv,
          struct ib_cm_sidr_rep_param *param)
{
 cm_format_mad_hdr(&sidr_rep_msg->hdr, CM_SIDR_REP_ATTR_ID,
     cm_id_priv->tid);
 sidr_rep_msg->request_id = cm_id_priv->id.remote_id;
 sidr_rep_msg->status = param->status;
 cm_sidr_rep_set_qpn(sidr_rep_msg, cpu_to_be32(param->qp_num));
 sidr_rep_msg->service_id = cm_id_priv->id.service_id;
 sidr_rep_msg->qkey = cpu_to_be32(param->qkey);

 if (param->info && param->info_length)
  memcpy(sidr_rep_msg->info, param->info, param->info_length);

 if (param->private_data && param->private_data_len)
  memcpy(sidr_rep_msg->private_data, param->private_data,
         param->private_data_len);
}
