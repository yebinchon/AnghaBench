
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icl_pdu {int ip_data_mbuf; int ip_ahs_mbuf; int ip_bhs_mbuf; } ;
struct icl_conn {int ic_outstanding_pdus; } ;


 int icl_pdu_zone ;
 int m_freem (int ) ;
 int refcount_release (int *) ;
 int uma_zfree (int ,struct icl_pdu*) ;

__attribute__((used)) static void
icl_soft_conn_pdu_free(struct icl_conn *ic, struct icl_pdu *ip)
{

 m_freem(ip->ip_bhs_mbuf);
 m_freem(ip->ip_ahs_mbuf);
 m_freem(ip->ip_data_mbuf);
 uma_zfree(icl_pdu_zone, ip);



}
