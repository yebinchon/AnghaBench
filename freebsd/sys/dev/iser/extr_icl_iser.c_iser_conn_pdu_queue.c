
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iser_conn {scalar_t__ state; } ;
struct icl_pdu {TYPE_1__* ip_bhs; } ;
struct icl_iser_pdu {int dummy; } ;
struct icl_conn {int dummy; } ;
struct TYPE_2__ {int bhs_opcode; } ;


 scalar_t__ ISER_CONN_UP ;
 int ISER_ERR (char*,struct icl_iser_pdu*) ;
 struct iser_conn* icl_to_iser_conn (struct icl_conn*) ;
 struct icl_iser_pdu* icl_to_iser_pdu (struct icl_pdu*) ;
 scalar_t__ is_control_opcode (int ) ;
 int iser_initialize_headers (struct icl_iser_pdu*,struct iser_conn*) ;
 int iser_send_command (struct iser_conn*,struct icl_iser_pdu*) ;
 int iser_send_control (struct iser_conn*,struct icl_iser_pdu*) ;
 scalar_t__ unlikely (int) ;

void
iser_conn_pdu_queue(struct icl_conn *ic, struct icl_pdu *ip)
{
 struct iser_conn *iser_conn = icl_to_iser_conn(ic);
 struct icl_iser_pdu *iser_pdu = icl_to_iser_pdu(ip);
 int ret;

 if (iser_conn->state != ISER_CONN_UP)
  return;

 ret = iser_initialize_headers(iser_pdu, iser_conn);
 if (ret) {
  ISER_ERR("Failed to map TX descriptor pdu %p", iser_pdu);
  return;
 }

 if (is_control_opcode(ip->ip_bhs->bhs_opcode)) {
  ret = iser_send_control(iser_conn, iser_pdu);
  if (unlikely(ret))
   ISER_ERR("Failed to send control pdu %p", iser_pdu);
 } else {
  ret = iser_send_command(iser_conn, iser_pdu);
  if (unlikely(ret))
   ISER_ERR("Failed to send command pdu %p", iser_pdu);
 }
}
