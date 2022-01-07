
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icl_pdu {int ip_data_mbuf; } ;
struct icl_conn {int dummy; } ;


 int m_copydata (int ,size_t,size_t,void*) ;

void
icl_soft_conn_pdu_get_data(struct icl_conn *ic, struct icl_pdu *ip,
    size_t off, void *addr, size_t len)
{

 m_copydata(ip->ip_data_mbuf, off, len, addr);
}
