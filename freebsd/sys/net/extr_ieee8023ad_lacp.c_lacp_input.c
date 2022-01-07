
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int subtype ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct lagg_port {int dummy; } ;
struct lacp_port {int dummy; } ;
struct ether_header {int dummy; } ;


 struct lacp_port* LACP_PORT (struct lagg_port*) ;


 int lacp_marker_input (struct lacp_port*,struct mbuf*) ;
 int lacp_pdu_input (struct lacp_port*,struct mbuf*) ;
 int m_copydata (struct mbuf*,int,int,int*) ;
 int m_freem (struct mbuf*) ;

struct mbuf *
lacp_input(struct lagg_port *lgp, struct mbuf *m)
{
 struct lacp_port *lp = LACP_PORT(lgp);
 uint8_t subtype;

 if (m->m_pkthdr.len < sizeof(struct ether_header) + sizeof(subtype)) {
  m_freem(m);
  return (((void*)0));
 }

 m_copydata(m, sizeof(struct ether_header), sizeof(subtype), &subtype);
 switch (subtype) {
  case 129:
   lacp_pdu_input(lp, m);
   return (((void*)0));

  case 128:
   lacp_marker_input(lp, m);
   return (((void*)0));
 }


 return (m);
}
