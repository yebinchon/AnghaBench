
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icl_pdu {scalar_t__ ip_data_mbuf; } ;
struct icl_conn {int dummy; } ;


 int memcpy (void*,scalar_t__,size_t) ;

void
iser_conn_pdu_get_data(struct icl_conn *ic, struct icl_pdu *ip,
         size_t off, void *addr, size_t len)
{

 if (ip->ip_data_mbuf)
  memcpy(addr, ip->ip_data_mbuf + off, len);
}
