
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_mra_msg {int local_comm_id; int remote_comm_id; } ;
struct cm_id_private {int dummy; } ;





 struct cm_id_private* cm_acquire_id (int ,int ) ;
 int cm_mra_get_msg_mraed (struct cm_mra_msg*) ;

__attribute__((used)) static struct cm_id_private * cm_acquire_mraed_id(struct cm_mra_msg *mra_msg)
{
 switch (cm_mra_get_msg_mraed(mra_msg)) {
 case 128:
  return cm_acquire_id(mra_msg->remote_comm_id, 0);
 case 129:
 case 130:
  return cm_acquire_id(mra_msg->remote_comm_id,
         mra_msg->local_comm_id);
 default:
  return ((void*)0);
 }
}
