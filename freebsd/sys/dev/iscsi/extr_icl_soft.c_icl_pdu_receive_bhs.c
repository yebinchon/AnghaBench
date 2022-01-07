
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_bhs {int dummy; } ;
struct icl_pdu {int ip_bhs; int ip_conn; } ;


 int ICL_DEBUG (char*) ;
 scalar_t__ icl_conn_receive_buf (int ,int ,int) ;

__attribute__((used)) static int
icl_pdu_receive_bhs(struct icl_pdu *request, size_t *availablep)
{

 if (icl_conn_receive_buf(request->ip_conn,
     request->ip_bhs, sizeof(struct iscsi_bhs))) {
  ICL_DEBUG("failed to receive BHS");
  return (-1);
 }

 *availablep -= sizeof(struct iscsi_bhs);
 return (0);
}
