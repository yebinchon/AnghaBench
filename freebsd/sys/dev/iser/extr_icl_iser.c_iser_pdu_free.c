
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icl_pdu {int dummy; } ;
struct icl_iser_pdu {int dummy; } ;
struct icl_conn {int dummy; } ;


 int icl_pdu_zone ;
 struct icl_iser_pdu* icl_to_iser_pdu (struct icl_pdu*) ;
 int uma_zfree (int ,struct icl_iser_pdu*) ;

void
iser_pdu_free(struct icl_conn *ic, struct icl_pdu *ip)
{
 struct icl_iser_pdu *iser_pdu = icl_to_iser_pdu(ip);

 uma_zfree(icl_pdu_zone, iser_pdu);
}
