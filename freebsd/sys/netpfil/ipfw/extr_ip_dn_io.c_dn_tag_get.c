
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct m_tag {scalar_t__ m_tag_id; scalar_t__ m_tag_cookie; } ;
struct dn_pkt_tag {int dummy; } ;


 int D (char*) ;
 scalar_t__ DN_AQM_MTAG_TS ;
 int KASSERT (int,char*) ;
 scalar_t__ MTAG_ABI_COMPAT ;
 scalar_t__ PACKET_TAG_DUMMYNET ;
 int m_tag_delete (struct mbuf*,struct m_tag*) ;
 struct m_tag* m_tag_first (struct mbuf*) ;

struct dn_pkt_tag *
dn_tag_get(struct mbuf *m)
{
 struct m_tag *mtag = m_tag_first(m);
 KASSERT(mtag != ((void*)0) &&
     mtag->m_tag_cookie == MTAG_ABI_COMPAT &&
     mtag->m_tag_id == PACKET_TAG_DUMMYNET,
     ("packet on dummynet queue w/o dummynet tag!"));
 return (struct dn_pkt_tag *)(mtag+1);
}
