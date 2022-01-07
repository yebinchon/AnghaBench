
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ u_int8_t ;
struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;


 int MTAG_8021Q ;
 int MTAG_8021Q_PCP_IN ;
 scalar_t__ PF_PRIO_ZERO ;
 struct m_tag* m_tag_locate (struct mbuf*,int ,int ,int *) ;

__attribute__((used)) static int
pf_match_ieee8021q_pcp(u_int8_t prio, struct mbuf *m)
{
 struct m_tag *mtag;
 u_int8_t mpcp;

 mtag = m_tag_locate(m, MTAG_8021Q, MTAG_8021Q_PCP_IN, ((void*)0));
 if (mtag == ((void*)0))
  return (0);

 if (prio == PF_PRIO_ZERO)
  prio = 0;

 mpcp = *(uint8_t *)(mtag + 1);

 return (mpcp == prio);
}
