
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icl_pdu {int dummy; } ;
struct icl_conn {int dummy; } ;


 int icl_pdu_queue (struct icl_pdu*) ;

void
icl_soft_conn_pdu_queue(struct icl_conn *ic, struct icl_pdu *ip)
{

 icl_pdu_queue(ip);
}
