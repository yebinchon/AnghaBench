
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iser_conn {int dummy; } ;
struct icl_pdu {int * ip_bhs; struct icl_conn* ip_conn; } ;
struct TYPE_2__ {int iscsi_header; } ;
struct icl_iser_pdu {TYPE_1__ desc; struct icl_pdu icl_pdu; struct iser_conn* iser_conn; } ;
struct icl_conn {int dummy; } ;


 int ISER_WARN (char*,int) ;
 int M_ZERO ;
 int icl_pdu_zone ;
 struct iser_conn* icl_to_iser_conn (struct icl_conn*) ;
 struct icl_iser_pdu* uma_zalloc (int ,int) ;

struct icl_pdu *
iser_new_pdu(struct icl_conn *ic, int flags)
{
 struct icl_iser_pdu *iser_pdu;
 struct icl_pdu *ip;
 struct iser_conn *iser_conn = icl_to_iser_conn(ic);

 iser_pdu = uma_zalloc(icl_pdu_zone, flags | M_ZERO);
 if (iser_pdu == ((void*)0)) {
  ISER_WARN("failed to allocate %zd bytes", sizeof(*iser_pdu));
  return (((void*)0));
 }

 iser_pdu->iser_conn = iser_conn;
 ip = &iser_pdu->icl_pdu;
 ip->ip_conn = ic;
 ip->ip_bhs = &iser_pdu->desc.iscsi_header;

 return (ip);
}
